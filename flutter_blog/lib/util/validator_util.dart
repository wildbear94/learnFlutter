import 'package:get/get.dart';
import 'package:validators/validators.dart';

Function validateUsername() {
  return (String? value) {
    if (value!.isEmpty) {
      return "Password 를 입력하세요.";
    } else if (!isAlphanumeric(value!)) {
      return "유저네임에 한글이나 특부문자는 들어갈수 없습니다.";
    } else if (value.length > 12) {
      return "유저네임은 11자 이하로 해주세요.";
    } else if (value.length < 4) {
      return "유저네임은 4자 이싱로 해주세요.";
    } else {
      return null;
    }
  };
}

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "Password를 입력하세요.";
    } else if (!isAlphanumeric(value!)) {
      return "Password를 한글이 들어갈수 없습니다.";
    } else if (value.length > 12) {
      return "Password를 11자 이하로 해주세요.";
    } else if (value.length < 4) {
      return "Password를 4자 이싱로 해주세요.";
    } else {
      return null;
    }
  };
}

Function validateEmail() {
  return (String? value) {
    if (value!.isEmpty) {
      return "이메일을 입력하세요.";
    } else if(!value.isEmail) {
      return "이메일 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}