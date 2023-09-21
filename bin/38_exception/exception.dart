/*
exception adalah menangkap error yang ada pada baris program
stack trace untuk menampilkan lokasi error program
*/

class CustomException implements Exception {
  String message;

  CustomException(this.message);
}

class Login {
  static void validate(String username, String password) {
    if (username.length < 8) {
      throw CustomException("Username is to short");
    } else if (password.length < 8) {
      throw CustomException("Password is to short");
    } else if (username != 'dodeteddy' || password != 'dodeteddy') {
      throw Exception('Login failed');
    }
  }
}

void main() {
  /* 
  try catch digunakan agar aplikasi kita lebih aman apabila menangkap error
  dengan try catch aplikasi kita tidak akan tiba tiba berhenti jika menemukan error
  */
  try {
    Login.validate("dode", "teddy");
  } on CustomException catch (exception, stackTrace) {
    // menangkap error dengan class custom exception
    print('Validation Error : ${exception.message}');
    print('Stack Trace : ${stackTrace.toString()}');
  } on Exception catch (exception, stackTrace) {
    // menangkap error dengan default class exception
    print('Error : ${exception.toString()}');
    print('Stack Trace : ${stackTrace.toString()}');
  } finally {
    // finally akan tetap dieksekusi tidak perduli programnya menangkap error atau tidak
    print('Finally');
  }

  print('====================');
// apabila ingin menangkap semua error yang ada bisa meenggunakan catch
  try {
    Login.validate("dode", "dodeteddy");
  } catch (exception, stackTrace) {
    print('Error : ${exception.toString()}');
    print('Stack Trace : ${stackTrace.toString()}');
  } finally {
    // finally akan tetap dieksekusi tidak perduli programnya menangkap error atau tidak
    print('Finally');
  }

  // dengan try catch baris code ini akan tetap dieksekusi dan aplikasi tidak akan berhenti secara tiba tiba saat menangkap error
  print('Selesai');
}
