import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['pt', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String ptText = '',
    String enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Certificados
  {
    'vw2ptmuh': {
      'pt': 'Thyago Sampaio',
      'en': 'Thyago Sampaio',
    },
    'powxjm6i': {
      'pt': 'Analista de Infraestrutura',
      'en': 'Infrastructure analyst',
    },
    '6xhjlqeg': {
      'pt': 'tecnologia@thyagosampaio.com.br',
      'en': 'tecno@thyagosampaio.com.br',
    },
    '5pv78yqk': {
      'pt':
          'Analista de Infraestrutura | ISO/IEC 27001 | AZ 900 | WOMCYCyberMaster | Ethical Hacker | OSINT | MCP | Fortinet NSE4 (Loading) | Cisco | Huawei | VMware(vCenter)',
      'en':
          'Infrastructure Analyst | ISO/IEC 27001 | AZ 900 | WOMCYCyberMaster | Ethical Hacker | OSINT | MCP | Fortinet NSE4 (Loading) | Cisco | Huawei | VMware(vCenter)',
    },
    'fr9ipkvd': {
      'pt': 'Formação Academica',
      'en': 'Academic formation',
    },
    'b2ismpj2': {
      'pt': 'UNINASSAU\nTecnólogo, Redes de Computadores\n2012 - 2014',
      'en': 'UNINASSAU Technologist, Computer Networks 2012 - 2014',
    },
    'nbp18zts': {
      'pt':
          'DESCOMPLICA FACULDADE DIGITAL\nMBA - Gestão de Projetos\n2022 - 2023',
      'en': 'DESCOMPLICA DIGITAL FACULTY MBA - Project Management 2022 - 2023',
    },
    'u6x90av7': {
      'pt':
          'DESCOMPLICA FACULDADE DIGITAL\nMBA - Segurança da Informação\n2022 - 2023',
      'en':
          'UNCOMPLICATE DIGITAL FACULTY MBA - Information Security 2022 - 2023',
    },
    '3ra4bdr9': {
      'pt': 'Experiencia',
      'en': 'Experience',
    },
    'fo78ob60': {
      'pt':
          'Analista de Infraestrutura\nG4F Soluções Corporativas · Tempo integral\nnov de 2019 - o momento',
      'en':
          'Infrastructure Analyst G4F Soluções Corporativas · Full-time Nov 2019 - Present',
    },
    'jzphe801': {
      'pt':
          'Analista de Suporte\nExomed · Tempo integral\nago de 2014 - out de 2017',
      'en': 'Exomed Support Analyst · Full time Aug 2014 - Oct 2017',
    },
    'usb5g1ju': {
      'pt': 'Suporte Tecnico\nBVR · Tempo integral\nmar de 2014 - jul de 2014',
      'en': 'Technical Support BVR · Full time Mar 2014 - Jul 2014',
    },
    '5mr64rvx': {
      'pt':
          'Tecnico em Monitoramento\nEletroShopping · Tempo integral\njan de 2013 - mar de 2014',
      'en':
          'EletroShopping Monitoring Technician · Full time Jan 2013 - Mar 2014',
    },
    'wge79xzu': {
      'pt':
          'Tecnico em Informatica\nDisys · Tempo integral\nago de 2012 - jan de 2013',
      'en': 'Informatica Disys Technician · Full time Aug 2012 - Jan 2013',
    },
    'yevy910h': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // bastata
  {
    'nlq2ukz1': {
      'pt': 'Page Title',
      'en': '',
    },
    'cxa5kfag': {
      'pt': 'Home',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
