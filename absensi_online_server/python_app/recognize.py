import face_recognition
import sys

known_image_path = sys.argv[1]
unknown_image_path = sys.argv[2]

try:
    known_image = face_recognition.load_image_file(known_image_path)
    unknown_image = face_recognition.load_image_file(unknown_image_path)
    print("PATH is OK")

    biden_encoding = face_recognition.face_encodings(known_image)[0]
    unknown_encoding = face_recognition.face_encodings(unknown_image)[0]
    print("Face encoding OK")

    results = face_recognition.compare_faces([biden_encoding], unknown_encoding)
    print("Results OK")

    if(results[0]==True):
        print("true")
    else:
        print("false")
except:
    print("Something wrong")