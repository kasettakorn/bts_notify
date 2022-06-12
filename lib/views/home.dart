import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bts_alert/json/shortcut_list.dart';
import 'package:bts_alert/json/transactions.dart';
import 'package:bts_alert/repo/repository.dart';
import 'package:bts_alert/utils/layouts.dart';
import 'package:bts_alert/utils/size_config.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final size = Layouts.getSize(context);
    return Material(
      color: Repository.bgColor(context),
      elevation: 0,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.44,
            color: Repository.headerColor(context),
          ),
          ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: [
              Gap(getProportionateScreenHeight(50)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi YOUNESS',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16)),
                      const Gap(3),
                      const Text('Welcome back',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
              const Gap(15),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Repository.accentColor(context),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: shortcutList.map<Widget>((item) {
                    return InkWell(
                      onTap: () => item['route'] == null
                          ? null
                          : Navigator.push(context,
                              MaterialPageRoute(builder: (c) => item['route'])),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: item['color'].withOpacity(0.15),
                        ),
                        child: Icon(item['icon'], color: item['color']),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transactions',
                      style: TextStyle(
                          color: Repository.textColor(context),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text('Today',
                          style: TextStyle(
                              color: Repository.subTextColor(context),
                              fontSize: 16)),
                      const Gap(3),
                      Icon(CupertinoIcons.chevron_down,
                          color: Repository.subTextColor(context), size: 17)
                    ],
                  )
                ],
              ),
              MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: transactions.length,
                  itemBuilder: (c, i) {
                    final trs = transactions[i];
                    return ListTile(
                      isThreeLine: true,
                      minLeadingWidth: 10,
                      minVerticalPadding: 20,
                      contentPadding: const EdgeInsets.all(0),
                      leading: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Repository.accentColor(context),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 1),
                                color: Colors.white.withOpacity(0.1),
                                blurRadius: 2,
                                spreadRadius: 1,
                              )
                            ],
                            image: i == 0
                                ? null
                                : DecorationImage(
                                    image: AssetImage(trs['avatar']),
                                    fit: BoxFit.cover,
                                  ),
                            shape: BoxShape.circle,
                          ),
                          child: i == 0
                              ? Icon(trs['icon'],
                                  color: const Color(0xFFFF736C), size: 20)
                              : const SizedBox()),
                      title: Text(trs['name'],
                          style: TextStyle(
                              color: Repository.textColor(context),
                              fontWeight: FontWeight.w500)),
                      subtitle: Text(trs['date'],
                          style: TextStyle(
                              color: Repository.subTextColor(context))),
                      trailing: Text(trs['amount'],
                          style: const TextStyle(
                              fontSize: 17, color: Colors.white)),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
