import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/ui/home/view_model/state/category_model.dart';
import 'package:flutter_codelab_1/ui/home/view_model/state/mount_model.dart';

final List<MountModel> mountItems = [
  MountModel(
      path:
          'https://sa.kapamilya.com/absnews/abscbnnews/media/2021/afp/01/17/20210116-mt-semeru-indonesia-ash-afp-s.jpg',
      name: 'スメル山',
      description:
          'セメル山は、インドネシア・ジャワ島東部にある活火山です。インド・オーストラリアプレートがユーラシアプレートの下に沈み込む、沈み込み帯に位置する。ジャワ島で最も高い山である。',
      location: '東ジャワ'),
  MountModel(
      path:
          'https://media-cdn.tripadvisor.com/media/photo-s/04/a5/6f/ce/dsc-5622jpg.jpg',
      name: 'ムルバブ山',
      description:
          'ムルバブ山は、インドネシア・ジャワ島の中部ジャワ州にある休火山の成層火山である。ジャワ語で「山」を意味する「メル」と「灰」を意味する「アブ」を組み合わせて「メルバブ」と名づけられました。',
      location: '中央ジャワ'),
  MountModel(
      path:
          'https://upload.wikimedia.org/wikipedia/commons/e/e0/Mauna_Loa_Volcano.jpg',
      name: 'マウナロア',
      description:
          'マウナロアは、太平洋に浮かぶアメリカ・ハワイ州のハワイ島を形成する5つの火山の一つです。マウナロアは、歴史的にタムマシフをしのぐ、質量・体積ともに最大の火山であり、地球上で最も大きな火山と考えられてきた。',
      location: 'ハワイ'),
  MountModel(
      path:
          'https://cdn.images.express.co.uk/img/dynamic/78/590x/mount-vesuvius-1100807.jpg',
      name: 'ヴェスヴィオ山',
      description:
          'ヴェスヴィオ山は、イタリア・カンパーニャ州のナポリ湾岸、ナポリの東約9km、海岸から少し離れたところにあるソーマ層火山である。カンパニア火山弧を形成するいくつかの火山の1つである。',
      location: 'イタリア'),
  MountModel(
      path:
          'https://upload.wikimedia.org/wikipedia/commons/0/04/PopoAmeca2zoom.jpg',
      name: 'ポポカテペトル山',
      description:
          'ポポカテペトルは、メキシコ中央部のプエブラ州、モレロス州、メキシコ州にある活動中の成層火山です。メキシコ横断火山帯の東半分に位置する。標高は5,426mで、シトラテペトルの5,636mに次いでメキシコで2番目に高い山である。',
      location: 'メキシコ')
];

final List<CategoryModel> categories = [
  CategoryModel(category: '山', icon: Icons.terrain),
  CategoryModel(category: '森', icon: Icons.park),
  CategoryModel(category: 'ビーチ', icon: Icons.beach_access),
  CategoryModel(category: 'ハイキング', icon: Icons.directions_walk)
];
