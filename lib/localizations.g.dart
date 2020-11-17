// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localizations.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

class AppLocalizations {
  AppLocalizations(this.locale) : this.labels = languages[locale];

  final Locale locale;

  static final Map<Locale, AppLocalizations_Labels> languages = {
    Locale.fromSubtags(languageCode: "en"): AppLocalizations_Labels(
      auth: AppLocalizations_Labels_Auth(
        signInButton: "Sign In",
        signUpButton: "Sign Up",
        resetPasswordButton: "Send Password Reset",
        emailFormField: "Email",
        passwordFormField: "Password",
        nameFormField: "Name",
        signInErrorTitle: "Sign In Error",
        signInError: "Login failed: email or password incorrect.",
        resetPasswordLabelButton: "Forgot password?",
        signUpLabelButton: "Create an Account",
        signUpErrorTitle: "Sign Up Failed.",
        signUpError: "There was a problem signing up.  Please try again later.",
        signInLabelButton: "Have an Account? Sign In.",
        resetPasswordNoticeTitle: "Password Reset Email Sent",
        resetPasswordNotice:
            "Check your email and follow the instructions to reset your password.",
        resetPasswordFailed: "Password Reset Email Failed",
        signInonResetPasswordLabelButton: "Sign In",
        updateUser: "Update Profile",
        updateUserSuccessNoticeTitle: "User Updated",
        updateUserSuccessNotice: "User information successfully updated.",
        updateUserFailNotice: "Failed to update user",
        enterPassword: "Enter your password",
        cancel: "Cancel",
        submit: "Submit",
        changePasswordLabelButton: "Change Password",
        resetPasswordTitle: "Reset Password",
        updateProfileTitle: "Update Profile",
        wrongPasswordNoticeTitle: "Login Failed",
        wrongPasswordNotice: "The password does not match our records.",
        unknownError: "Unknown Error",
      ),
      settings: AppLocalizations_Labels_Settings(
        title: "Settings",
        language: "Language",
        theme: "Theme",
        signOut: "Sign Out",
        dark: "Dark",
        light: "Light",
        system: "System",
        updateProfile: "Update Profile",
      ),
      home: AppLocalizations_Labels_Home(
        title: "Home",
        nameLabel: "Name",
        uidLabel: "UID",
        emailLabel: "Email",
        adminUserLabel: "Admin User",
      ),
      app: AppLocalizations_Labels_App(
        title: "Flutter Starter Project",
      ),
      validator: AppLocalizations_Labels_Validator(
        email: "Please enter a valid email address.",
        password: "Password must be at least 6 characters.",
        name: "Please enter a name.",
        number: "Please enter a number.",
        notEmpty: "This is a required field.",
        amount:
            "Please enter a number i.e. 250 - no dollar symbol and no cents",
      ),
      menu: AppLocalizations_Labels_Menu(
        home: "Home",
        settings: "Settings",
        emitirBoleta: "Create Ticket",
        servicios: "Service",
      ),
      services: AppLocalizations_Labels_Services(
        title: "Services",
        btn_save: "Save",
        edit_title: "Title",
        edit_description: "Descriptions",
        edit_position: "Positions",
      ),
    ),
    Locale.fromSubtags(languageCode: "es"): AppLocalizations_Labels(
      auth: AppLocalizations_Labels_Auth(
        signInButton: "Registrarse",
        signUpButton: "Regístrate",
        resetPasswordButton: "Enviar restablecimiento de contraseña",
        emailFormField: "Email",
        passwordFormField: "Contraseña",
        nameFormField: "Nombre",
        signInErrorTitle: "Error al iniciar sesión",
        signInError:
            "La conexión falló: correo electrónico o contraseña incorrecta.",
        resetPasswordLabelButton: "¿Se te olvidó tu contraseña?",
        signUpLabelButton: "Crea una cuenta",
        signUpErrorTitle: "Registro fallido.",
        signUpError:
            "Hubo un problema al inscribirse. Por favor, inténtelo de nuevo más tarde.",
        signInLabelButton: "¿Tener una cuenta? Registrarse.",
        resetPasswordNoticeTitle:
            "Restablecer contraseña de correo electrónico enviados",
        resetPasswordNotice:
            "Consultar su correo electrónico y siga las instrucciones para restablecer su contraseña.",
        resetPasswordFailed:
            "Restablecer contraseña de correo electrónico incorrecto",
        signInonResetPasswordLabelButton: "Registrarse",
        updateUser: "Actualización del perfil",
        updateUserSuccessNoticeTitle: "Actualización de usuario",
        updateUserSuccessNotice:
            "La información de usuario actualizada correctamente.",
        updateUserFailNotice: "Error al usuario la actualización",
        enterPassword: "Ingresa tu contraseña",
        cancel: "Cancelar",
        submit: "Enviar",
        changePasswordLabelButton: "Cambia la contraseña",
        resetPasswordTitle: "Restablecer la contraseña",
        updateProfileTitle: "Actualización del perfil",
        wrongPasswordNoticeTitle: "Error de inicio de sesion",
        wrongPasswordNotice:
            "La contraseña no coincide con nuestros registros.",
        unknownError: "Error desconocido",
      ),
      settings: AppLocalizations_Labels_Settings(
        title: "Ajustes",
        language: "Idioma",
        theme: "Tema",
        signOut: "Desconectar",
        dark: "Oscuro",
        light: "Ligero",
        system: "Sistema",
        updateProfile: "Actualización del perfil",
      ),
      home: AppLocalizations_Labels_Home(
        title: "Hogar",
        nameLabel: "Nombre",
        uidLabel: "UID",
        emailLabel: "Email",
        adminUserLabel: "admin User",
      ),
      app: AppLocalizations_Labels_App(
        title: "Proyecto de arranque aleteo",
      ),
      validator: AppLocalizations_Labels_Validator(
        email:
            "Por favor, introduce una dirección de correo electrónico válida.",
        password: "La contraseña debe tener al menos 6 caracteres.",
        name: "Por favor, introduzca un nombre.",
        number: "Por favor, introduzca un número.",
        notEmpty: "Este es un campo obligatorio.",
        amount:
            "Por favor, introduzca un número, es decir 250 - ningún símbolo del dólar y sin centavos",
      ),
      menu: AppLocalizations_Labels_Menu(
        home: "Hogar",
        settings: "Ajustes",
        emitirBoleta: "Emitir Boleta",
        servicios: "Servicios",
      ),
      emitirBoleta: AppLocalizations_Labels_Emitir_Boleta(
        title: "Emitir Boleta",
      ),
      services: AppLocalizations_Labels_Services(
        title: "Servicios",
        btn_save: "Guardar",
        edit_title: "Título",
        edit_description: "Descioción",
        edit_position: "Posición",
      ),
    ),
  };

  final AppLocalizations_Labels labels;

  static AppLocalizations_Labels of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)?.labels;
}

class AppLocalizations_Labels_Auth {
  const AppLocalizations_Labels_Auth(
      {this.signInButton,
      this.signUpButton,
      this.resetPasswordButton,
      this.emailFormField,
      this.passwordFormField,
      this.nameFormField,
      this.signInErrorTitle,
      this.signInError,
      this.resetPasswordLabelButton,
      this.signUpLabelButton,
      this.signUpErrorTitle,
      this.signUpError,
      this.signInLabelButton,
      this.resetPasswordNoticeTitle,
      this.resetPasswordNotice,
      this.resetPasswordFailed,
      this.signInonResetPasswordLabelButton,
      this.updateUser,
      this.updateUserSuccessNoticeTitle,
      this.updateUserSuccessNotice,
      this.updateUserFailNotice,
      this.enterPassword,
      this.cancel,
      this.submit,
      this.changePasswordLabelButton,
      this.resetPasswordTitle,
      this.updateProfileTitle,
      this.wrongPasswordNoticeTitle,
      this.wrongPasswordNotice,
      this.unknownError});

  final String signInButton;
  final String signUpButton;
  final String resetPasswordButton;
  final String emailFormField;
  final String passwordFormField;
  final String nameFormField;
  final String signInErrorTitle;
  final String signInError;
  final String resetPasswordLabelButton;
  final String signUpLabelButton;
  final String signUpErrorTitle;
  final String signUpError;
  final String signInLabelButton;
  final String resetPasswordNoticeTitle;
  final String resetPasswordNotice;
  final String resetPasswordFailed;
  final String signInonResetPasswordLabelButton;
  final String updateUser;
  final String updateUserSuccessNoticeTitle;
  final String updateUserSuccessNotice;
  final String updateUserFailNotice;
  final String enterPassword;
  final String cancel;
  final String submit;
  final String changePasswordLabelButton;
  final String resetPasswordTitle;
  final String updateProfileTitle;
  final String wrongPasswordNoticeTitle;
  final String wrongPasswordNotice;
  final String unknownError;
}

class AppLocalizations_Labels_Settings {
  const AppLocalizations_Labels_Settings(
      {this.title,
      this.language,
      this.theme,
      this.signOut,
      this.dark,
      this.light,
      this.system,
      this.updateProfile});

  final String title;
  final String language;
  final String theme;
  final String signOut;
  final String dark;
  final String light;
  final String system;
  final String updateProfile;
}

class AppLocalizations_Labels_Home {
  const AppLocalizations_Labels_Home(
      {this.title,
      this.nameLabel,
      this.uidLabel,
      this.emailLabel,
      this.adminUserLabel});

  final String title;
  final String nameLabel;
  final String uidLabel;
  final String emailLabel;
  final String adminUserLabel;
}

class AppLocalizations_Labels_App {
  const AppLocalizations_Labels_App({this.title});

  final String title;
}

class AppLocalizations_Labels_Validator {
  const AppLocalizations_Labels_Validator(
      {this.email,
      this.password,
      this.name,
      this.number,
      this.notEmpty,
      this.amount});

  final String email;
  final String password;
  final String name;
  final String number;
  final String notEmpty;
  final String amount;
}

class AppLocalizations_Labels_Menu {
  const AppLocalizations_Labels_Menu({
    this.home,
    this.settings,
    this.emitirBoleta,
    this.servicios,
  });

  final String home;
  final String settings;
  final String emitirBoleta;
  final String servicios;
}

class AppLocalizations_Labels_Emitir_Boleta {
  const AppLocalizations_Labels_Emitir_Boleta({this.title});

  final String title;
}

class AppLocalizations_Labels_Services {
  const AppLocalizations_Labels_Services({
    this.title,
    this.btn_save,
    this.edit_title,
    this.edit_description,
    this.edit_position,
    this.img,
  });

  final String title;
  final String btn_save;
  final String edit_title;
  final String edit_description;
  final String edit_position;
  final String img;
}

class AppLocalizations_Labels {
  const AppLocalizations_Labels(
      {this.auth,
      this.settings,
      this.home,
      this.app,
      this.validator,
      this.menu,
      this.emitirBoleta,
      this.services});

  final AppLocalizations_Labels_Auth auth;
  final AppLocalizations_Labels_Settings settings;
  final AppLocalizations_Labels_Home home;
  final AppLocalizations_Labels_App app;
  final AppLocalizations_Labels_Validator validator;
  final AppLocalizations_Labels_Menu menu;
  final AppLocalizations_Labels_Emitir_Boleta emitirBoleta;
  final AppLocalizations_Labels_Services services;
}
