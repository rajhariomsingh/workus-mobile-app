import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workfromus/utils/dimensions.dart';
import 'package:workfromus/widgets/Expandabletext.dart';
import 'package:workfromus/widgets/appicon.dart';
import 'package:workfromus/widgets/bigtext.dart';
import 'package:workfromus/widgets/smalltext.dart';

class recommendedfaculties extends StatelessWidget {
  const recommendedfaculties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appicon(icon: Icons.clear),
                appicon(icon: Icons.arrow_right_alt,),

              ],
            ),
            bottom: PreferredSize(

              preferredSize: Size.fromHeight(20),
              child: Container(

                child: Center(child: bigtext(text: "Title",color: Colors.black,size: Dimensions.Font26,)),
                width: double.maxFinite,

                padding: EdgeInsets.only(top: Dimensions.height10/2,bottom: Dimensions.height10),
               decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                 ),
               ),

              )
            ),
            pinned: true,
            backgroundColor: Colors.blueAccent,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/images.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
           child: Column(
             children: [
               Container(

                 child: expandabletext(text: "It may not be luxurious or even fully private, but just about every full-time college faculty member has an office where he or she can work quietly, meet with students, teleconference or even record classes for e-learning. Unlike offices, classrooms both general purpose and special function are treated as shared space, scheduled by the department or registrar with the intent to maximize the utilization of a valuable resource.Space is expensive, particularly in a higher-ed setting where buildings are constructed to serve for fifty to one hundred years. Many higher-ed buildings are designed to a net-to-gross efficiency of 65%, which means that a 900 square foot classroom actually represents 1,385 gross square feet. If the building is constructed at 300/SF, that single classroom represents 15,500. Eliminating the need for that one classroom through more efficient scheduling saves that nearly half-million dollars, either reducing the project’s fund-raising demands or freeing those funds to be used elsewhere. In contrast, a 120 square foot faculty office (185 gross square feet) represents 55,500 at the same construction cost.In the effort to use space as efficiently as possible, some college campuses are pushing further on faculty offices, eliminating private offices which may be empty most of the week in favor of more flexible, more collaborative and more space-saving shared workspace. This transition can generate considerable resistance from full-time faculty, where even a proposed reduction in the size of private offices (“I need space for all my books”) is often a point of contention. While it may be controversial for full-time faculty, many colleges are already providing only shared workspace for adjunct faculty.In the elementary grades, the demand for faculty workspace is different, and teachers almost always “office” in the classroom. The teacher and students occupy the same classroom for most of the day – students typically don’t move from room to room except for special subjects where the subject matter requires a special purpose space: art, music, and sometimes science. Since the typical classrooms are used for multiple subjects with the same teacher, those rooms are stocked with all of the different materials and manipulatives necessary, organized as needed by each teacher. It is rare for an elementary school to provide an office outside the classroom for each individual teacher.For grades 7-12, areas of instruction become more specialized and schools offer increasingly diverse academic programs, so the number teachers on staff and the number of instructional spaces needed begin to diverge. On these projects, we sometimes encounter differing opinions about the best way to accommodate teacher office space. More and more Middle and Upper schools are beginning to transition from the traditional office-in-the-classroom model to the collegiate model. In several of our recent projects the schools have opted to provide teacher workspace outside the classroom, sometimes over the objection of the teachers who are accustomed to considering the classroom their own territory.For the new Rhetoric School [grades 9-12] building at the Covenant school in Dallas, for example, space efficiency (and construction economics) were the drivers. The building provides nineteen instructional spaces to meet the enrollment’s scheduling needs, including science labs and art rooms, but the academic program is built around twenty-nine faculty members with different specialties. To ensure that each teacher had his/her own workspace while balancing classroom count with scheduling demands, it was decided to provide a small (100 sf) private office outside the classroom for each teacher except for Art (the Art teachers office in their studios,) and to treat all the non-specific classrooms as shared space to be used as needed, keeping the utilization high. Grouped around a common worktable, the teacher office clusters become collaboration nodes throughout the building where students can meet with faculty or work among themselves. We utilized a similar strategy at the new Science Center at The Hockaday School."),
                margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
               )
             ],
           )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appicon(iconsize: Dimensions.iconsize24,icon: Icons.remove,backgroundcolor: Colors.lightBlueAccent,),
                
                bigtext(text: "Rs500"+" X "+" 0 ",color: Colors.black,),
                
                appicon(iconsize: Dimensions.iconsize24,icon: Icons.add,backgroundcolor: Colors.lightBlueAccent,),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomheight,
            padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30,left: Dimensions.width20, right: Dimensions.width20),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(

                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10,left: Dimensions.width10, right: Dimensions.width10),
                    child: bigtext(text: "₹500/hr | Continue?",color: Colors.black,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent,
                    )
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
