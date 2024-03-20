import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';
import 'package:dio/dio.dart';

class listView extends StatelessWidget {
  const listView({super.key});

  final List<CategoryModel> catrgories = const [
    CategoryModel(
        Name: 'sports',
        image:
            'https://wearecardinals.com/wp-content/uploads/2020/04/u1Re9qgMfM8d6kumlW85PS6s55jQh5fbdmppgQsP.jpeg'),
    CategoryModel(
        Name: 'business',
        image:
            'https://static-cse.canva.com/blob/564710/Affordablemarketingideasforyoursmallbusiness_featuredimage.jpg'),
    CategoryModel(
        Name: 'health',
        image:
            'https://online.hbs.edu/Style%20Library/api/resize.aspx?imgpath=/online/PublishingImages/blog/health-care-economics.jpg&w=1200&h=630'),
    CategoryModel(
        Name: 'science',
        image:
            'https://www.ilc.org/cdn/shop/products/snc4m-science-online-course_1718x.jpg?v=1598296135'),
    CategoryModel(
        Name: 'technology',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqQ1Na7wqx_pwBOppIMtL5YwJHTyNE0ggy0w&usqp=CAU'),
    CategoryModel(
        Name: 'entertainment',
        image:
            'https://blog.ipleaders.in/wp-content/uploads/2018/07/20170202160000.gif'),
    CategoryModel(
        Name: 'general',
        image:
            'https://thehill.com/wp-content/uploads/sites/2/2022/08/CA_space_08032022istock.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catrgories.length,
          itemBuilder: (context, index) {
            return categoryCard(
              category: catrgories[index],
            );
          }),
    );
  }
}
