// ignore_for_file: constant_identifier_names

import 'package:flutter_application_2/models/products.dart';

import '../models/category.dart';

// ignore: unnecessary_const
const Categories_data = const [
  Category(
    id: 'c1',
    title: 'Huile',
    imageUrl:
        'https://images.unsplash.com/photo-1608571702600-5a5419d31475?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGFyZ2FuJTIwb2lsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600',
  ),
  Category(
    id: 'c2',
    title: 'Savon',
    imageUrl:
        'https://images.unsplash.com/photo-1588713029525-f95e7652926d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870',
  ),
  Category(
    id: 'c3',
    title: 'Argile',
    imageUrl:
        'https://ds.static.rtbf.be/article/image/1920x1080/9/9/3/0e731690d1e58380a8ac1906666178fd-1633435858.jpg',
  ),
];
// ignore: unnecessary_const
const Products_data = const [
  Product(
    id: 'm1',
    Title1: 'Huile d’argan Bio désodorisée certifié du Maroc',
    Title2: 'Les bienfaits de l’huile d’argan bio',
    categories: [
      'c1',
    ],
    title: "Huile d'argan Bio d'esodorisee 100% naturelle ",
    producttype: ProductType.huile,
    type: Type.Cosmetique,
    imageUrl:
        'https://images.unsplash.com/photo-1629274128491-36edfdc0d8cb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8b2xpdmUlMjBvaWx8ZW58MHx8MHx8&auto=format&fit=crop&w=600',
    duration: 150,
    description: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    bienfaits: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    emballage: [
      'Délai de livraison: 15 jours après la confirmation de tous les detaills et dépôt',
      'L’Huile d’argan peur être en 40ml, 60ml, 100ml ,125ml, en plastique PET avec pompe\n 250ml, 500 ml, 1Liter, 10 Liters, 20 liters, 25 liters ,33 Liters en plastique avec bouchon ,L’huile d’argan peur être en 40ml, 60ml, 100ml ,250ml, 500 ml en bouteille en verre transprente ou tinté',
    ],
    details: [
      'Lieu d’origine: Maroc',
      'Type de traitement: pressé à froid',
      'Forme: huile',
      'Utilisation: Corps, visage et cheveux (utilisation dans un salon de coiffure)',
      'Type d’approvisionnement: OBM (Original Brand Manufacturing)',
      'Marque: BioProGreen ou étiquetage privé',
      'Prix: départ usine',
      ' Certification: MSDS, CCPB / NOP Programme USDA',
      'Type de culture: Biologique',
      'Ingrédient principal: noyau d’Argania Spinosa',
    ],
    isCosmetible: false,
    isCosmetique: true,
  ),
  Product(
    id: 'm2',
    Title1: 'L’huile d’argan alimentaire 100% bio du maroc',
    Title2: 'L’utilisation du huile d’argan pour cuisinier',
    categories: [
      'c1',
    ],
    title: "Huile d'argan  100% pure certifiee biologique et grillee ",
    producttype: ProductType.huile,
    type: Type.Comestible,
    imageUrl:
        'https://photo620x400.mnstatic.com/97547c0b378a055f0c04c44c7b150b50/cooperative-dhuile-dargan-dimouzzer.jpg',
    duration: 190,
    description: [
      'Huile d’argan alimentaire est L’huile miracle, l’or liquide, le trésor du désert, l’huile aux trésors très riche en vitamine E, ce qui lui permet de neutraliser les radicaux libres et préserver l’élasticité de la peau en favorisant l’oxygénation cellulaire et en améliorant la qualité du ciment intercellulaire.',
      'Elle est riche en d’autres antioxydants très bénéfiques pour la santé comme la vitamine A et C, les polyphénols, carotènes, les tocophérols et les stérols.',
    ],
    bienfaits: [
      'La seule différence dans l’opération de torréfaction des graines d’argan pour l’huile d’argan alimentaire et pour  L’huile destinée à un usage cosmétique n’est pas grillée, d’où son odeur plus neutre et sa couleur plus claire.',
      'L’huile d’argan alimentaire est tres utilisée dans les recettes marocaines. Vous pouvez donc l’utiliser sans crainte dans des tajines et autres couscous. Elle s’associe très bien aux épices, comme le paprika, la coriandre, le curcuma, le cumin, le safran…. Si vous aimez cuisiner épicé, faites de l’huile d’Argan votre meilleur alliée !',
      'L’huile d’Argan s’associe également très bien avec le poisson.',
      'vous pouvez l’utiliser sur vos légumes, comme vous le feriez habituellement avec de l’huile d’olive ou une noix de beurre.',
      'Procédé d’obtention: Première pression à froid\n\nCorps pressés: Fruit de l’Arganier (graines d’argan)\n\nNom botanique: Argania spinosa\n\nAutres noms: Huile d’argan, Argan\n\nQualité: Huile D’argan 100% pure et naturelle, vierge, première pressée à froid, sans traitement chimique, qualité alimentaire\n\nPotentiel oxydatif: Insensible\n\nPays d’origine: Maroc',
    ],
    emballage: [
      'Délai de livraison: 15 jours après la confirmation de tous les detaills et dépôt',
      'L’Huile d’argan peur être en 40ml, 60ml, 100ml ,125ml, en plastique PET avec pompe\n 250ml, 500 ml, 1Liter, 10 Liters, 20 liters, 25 liters ,33 Liters en plastique avec bouchon ,L’huile d’argan peur être en 40ml, 60ml, 100ml ,250ml, 500 ml en bouteille en verre transprente ou tinté',
    ],
    details: [
      'Lieu d’origine: Maroc',
      'Type de traitement: pressé à froid',
      'Forme: huile',
      'Utilisation: Corps, visage et cheveux (utilisation dans un salon de coiffure)',
      'Type d’approvisionnement: OBM (Original Brand Manufacturing)',
      'Marque: BioProGreen ou étiquetage privé',
      'Prix: départ usine',
      ' Certification: MSDS, CCPB / NOP Programme USDA',
      'Type de culture: Biologique',
      'Ingrédient principal: noyau d’Argania Spinosa',
    ],
    isCosmetible: true,
    isCosmetique: false,
  ),
  Product(
    id: 'm3',
    Title1: 'Huile de pépins de figue de Barbarie',
    Title2: 'Les bienfaits d’huile de pépins de figue de barbarie',
    categories: [
      'c1',
    ],
    title: 'Huile de pepins de Figue de Barbarie BIO',
    producttype: ProductType.huile,
    type: Type.Cosmetique,
    imageUrl:
        'https://images.unsplash.com/photo-1632693786035-918aa5a10d01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    duration: 189,
    description: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    bienfaits: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    emballage: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    details: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    isCosmetible: false,
    isCosmetique: true,
  ),
  Product(
    id: 'm4',
    Title1: 'Huile d’Argan Vierge Bio',
    Title2: 'Les bienfait de l’Huile d’argan vierge',
    categories: ['c1'],
    title: "Huile d'argan Vierge Bio  100% pure & certifiee",
    producttype: ProductType.huile,
    type: Type.Cosmetique,
    imageUrl: 'https://cf.shopee.sg/file/3be8ca8d7ff12cb5ef4944ec63584b40',
    duration: 120,
    description: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    bienfaits: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    emballage: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    details: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    isCosmetible: false,
    isCosmetique: true,
  ),
  Product(
    id: 'm5',
    Title1:
        'Ghassoul, Rassoul, Rhassoul Argile cosmétique naturelle et biologique',
    Title2: 'Huile d’argan Bio désodorisée certifié du Maroc',
    categories: ['c3'],
    title: 'le Ghssoul ou rhassoul Argile cosmetique 100% naturelle',
    producttype: ProductType.argile,
    type: Type.Cosmetique,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdeZnlLh4GEPvuLv6NgJyEC-pWZUPEPUmDkmdkKmCp3XZ-CO0vtq7iqsD1FQLLRdU4DPc&usqp=CAU',
    duration: 159,
    description: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    bienfaits: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    emballage: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    details: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    isCosmetible: false,
    isCosmetique: true,
  ),
  Product(
    id: 'm6',
    Title1: 'Savon noir marocain 100 % naturel',
    Title2: 'Les bienfaits du Ghassoul ou Rassoul ',
    categories: ['c2'],
    title: 'Savon noir du Maroc',
    producttype: ProductType.savon,
    type: Type.Cosmetique,
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0050/7478/0275/products/4aFqadrx6t_800x.jpg?v=1648128430',
    duration: 180,
    description: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    bienfaits: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    emballage: [
      'Tout d’abord Nous vous informons que la désodorisation de l’huile d’argan bio est un procédé de filtration.C’est un procédé totalement a froid.Il consiste a faire passer l’huile a travers des plaques en charbon actif naturel',
      'Aussi, a travers cette opération, on arrive a fixer les qualités de l’huile et neutraliser les risques éventuels germes.',
      'Ainsi Son utilisation dans le domaine de traitement des huiles végétales est relativement récent …',
      'L’introduction de cette technique dans le domaine de l’huile d’Argan, fait partie des efforts de recherche développement que nous ne cessons pas de réaliser pour améliorer d’avantage la qualité de notre huile d’Argan bio. et De plus répondre par la même occasion aux attentes de nos clients professionnels du domaine de la cosmétique.'
    ],
    details: [
      'Quoi qu’il en soit son type l’Huile d’argan bio aide à lutter contre le vieillissement de la peau',
      'Remarquable correcteur des déséquilibres et des carences en acides gras essentiels, elle relance les fonctions vitales de la peau, agit efficacement contre la déshydratation et le relâchement des tissus tout en restaurant le film hydro lipidique.Nourrie, la peau est plus ferme, plus lisse.',
      'Son exceptionnelle richesse en vitamine E, puissant antioxydant, permet à l’épiderme de combattre les agressions des radicaux libres impliqués dans le vieillissement cutané et protège les cellules de l’oxydation destructrice.',
      'Peu grasse et sans odeur, en fait  l’Huile d’argan est un soin anti âge complet, régénérant, restructurant et protecteur du capital jeunesse de la peau. Au fil des applications, le relief cutané se tonifie, la peau retrouve souplesse et douceur.',
      'provient de la région du sud du Maroc où l’argan trois poussent naturellement sans interférence humaine',
      'Lieu d’origine: Maroc\n\nNom INCI: Argania Spinosa Kernel Oil\n\nÉtiquetage privé: Accepté\n\nType de traitement: Pressé à froid\n\nType de culture: Biologique',
    ],
    isCosmetible: false,
    isCosmetique: true,
  ),
];
