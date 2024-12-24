import 'package:dartlearning/dartlearning.dart' as dartlearning;

Map data = {
  "message": "Course Category Found",
  "status": 200,
  "data": [
    {
      "_id": "6721e3862feca6d9481fd291",
      "name": "Foundation Course",
      "desc":
          "(suitable for learners having at least 6-8 months of prep time in Govt Exams segment and 1 year of prep time in PUG and K12 exams)",
      "image":
          "https://res.cloudinary.com/dvwecihog/image/upload/v1730274181/Amitesh-Project/images/CourseCategory/yfneok1vv5zagfji0zxp.png",
      "status": true,
      "createdAt": "2024-10-30T07:43:02.449Z",
      "updatedAt": "2024-10-30T07:43:02.449Z",
      "__v": 0
    },
    {
      "_id": "6721e6464c0f54e086046387",
      "name": "Crash Course",
      "desc":
          "(suitable for learners having 3-4 months of prep time in Govt. Exams segment and 6-8 month of prep time in PUG & K12 exams)",
      "image":
          "https://res.cloudinary.com/dvwecihog/image/upload/v1730274885/Amitesh-Project/images/CourseCategory/dljnpzutjo959ytpjcwl.png",
      "status": true,
      "createdAt": "2024-10-30T07:54:46.623Z",
      "updatedAt": "2024-10-30T07:54:46.623Z",
      "__v": 0
    },
    {
      "_id": "6721e6684c0f54e08604638b",
      "name": "Express Course",
      "desc":
          "(suitable for learners who want to brush up their concepts in 1-2 months of prep time in any segment. This course is ideal for those learners who already have a deep understanding of the concepts (thorough understanding)",
      "image":
          "https://res.cloudinary.com/dvwecihog/image/upload/v1730274919/Amitesh-Project/images/CourseCategory/e32wjssuffvhqhnfi2oa.png",
      "status": true,
      "createdAt": "2024-10-30T07:55:20.640Z",
      "updatedAt": "2024-10-30T07:55:20.640Z",
      "__v": 0
    }
  ]
};

void main() {
  List newdata = data['data']
      .map((e) => {
            'name': e['name'],
            'desc': e['desc'],
          })
      .toList();
  var ans = newdata.where((e) => e['name'].contains('tion')).toList();
  print(newdata);
}
