<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CompanyController extends Controller
{
    public function index(Request $request)
    {
        $companies = Company::paginate($request->limit ?? 10);
        return response()->json(['companies' => $companies], 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'company_name' => 'required',
            'address' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $company = Company::create($request->all());
        return response()->json(['company' => $company], 201);
    }

    public function show($id)
    {
        $company = Company::find($id);
        if (!$company) {
            return response()->json(['error' => 'Company not found'], 404);
        }
        return response()->json(['company' => $company], 200);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'company_name' => 'required',
            'address' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $company = Company::find($id);
        if (!$company) {
            return response()->json(['error' => 'Company not found'], 404);
        }

        $company->update($request->all());
        return response()->json(['company' => $company], 200);
    }

    public function destroy($id)
    {
        $company = Company::find($id);
        if (!$company) {
            return response()->json(['error' => 'Company not found'], 404);
        }
        $company->delete();
        return response()->json(['message' => 'Company deleted successfully'], 200);
    }
}
