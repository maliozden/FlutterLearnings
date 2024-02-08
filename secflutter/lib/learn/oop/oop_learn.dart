import 'dart:io';

import 'package:secflutter/learn/oop/custom_exception.dart';

abstract class IFileDownload {
  downloadItem(FileItem? fileItem);
  void toShare(String path) {
    print('File shared');
  }
}

//üst classın özellikleri impelements ile alınırsa bütün methodlar override edilmek zorundadır
//üst classın özellikleri extends ile alınırsa bütün methodlar override edilmek zorunda degildir
class FileDownload extends IFileDownload with ShareMixin {
  @override
  void downloadItem(FileItem? fileItem) {
    if (fileItem == null) {
      throw FileDownloadException();
    }
    print('File download');
    return null;
  }
}

class SMSDownload implements IFileDownload {
  @override
  downloadItem(FileItem? fileItem) {
    // TODO: implement downloadItem
    throw UnimplementedError();
  }

  @override
  void toShare(String path) {
    print('SMS shared');
  }
}

class FileItem {
  final String name;
  final File file;
  FileItem(this.file, this.name) {}
}

//on anahtar kelimesi ile sadece o classtan türeyen yapılarda kullanılabilirlik kazandırabiliriz
mixin ShareMixin on IFileDownload {
  void Share() {}
}
