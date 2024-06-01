# Tesando acesso Firebase Realtime Database

## Firebase Flutter App

### Objetivo
Este aplicativo Flutter tem como objetivo testar a integração com o Firebase para autenticação de usuários e armazenamento de dados em tempo real usando o Firebase Realtime Database.
 
### Requisitos
- Conta no Firebase com um projeto configurado.
- Aplicativo Android configurado no Firebase.
- Firebase Realtime Database habilitado no projeto Firebase.

### Dependências Necessárias
Certifique-se de adicionar as seguintes dependências ao seu arquivo `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^latest_version
  firebase_auth: ^latest_version
  firebase_database: ^latest_version
  flutter_dotenv: ^latest_version
```

### Configurações do Firebase
1. **Configurar Firebase no Projeto Flutter**:
   - Adicione o arquivo `google-services.json` na pasta `android/app` do seu projeto Flutter.

   Aqui foi utilizado o `Firebase Cli` que permite gerenciar e implementar projetos Firebase diretamente a partir do terminal assim como fazer a configuração de 
   forma automática usando linha de comando `flutterfire configure` diretamente no terminal .

   Como o projeto foi criado do `Zero` usando o `Firebase Cli` não foi necessário maipular os arquivos `Build.gradle`

### Arquivo `.env`
Crie a pasta `assets` na raiz do seu projeto e adicione um arquivo `.env` com as configurações do Firebase:
```
my_firebase_app/
├── android/
├── ios/
├── lib/
├── assets/
│   └── .env
├── pubspec.yaml
└── ...
```

### Conteúdo do Arquivo `.env`
Certifique-se de que o arquivo `.env` contenha as seguintes variáveis:
```env
# Configurações comuns
PROJECT_ID=seu_project_id
DATABASE_URL=https://seu_project_id-default-rtdb.firebaseio.com
STORAGE_BUCKET=seu_project_id.appspot.com
MESSAGING_SENDER_ID=seu_messaging_sender_id

# Android
API_KEY_ANDROID=sua_api_key_android
APP_ID_ANDROID=1:seu_app_id_android

# iOS
API_KEY_IOS=sua_api_key_ios
APP_ID_IOS=1:seu_app_id_ios
IOS_BUNDLE_ID=com.example.seu_bundle_id_ios

# macOS
API_KEY_MACOS=sua_api_key_macos
APP_ID_MACOS=1:seu_app_id_macos

# Web
API_KEY_WEB=sua_api_key_web
APP_ID_WEB=1:seu_app_id_web
AUTH_DOMAIN_WEB=seu_project_id.firebaseapp.com
MEASUREMENT_ID_WEB=seu_measurement_id_web

# Windows
API_KEY_WINDOWS=sua_api_key_windows
APP_ID_WINDOWS=1:seu_app_id_windows
AUTH_DOMAIN_WINDOWS=seu_project_id.firebaseapp.com
MEASUREMENT_ID_WINDOWS=seu_measurement_id_windows
```

### Configuração do `pubspec.yaml`
Certifique-se de que a pasta `assets` está declarada no arquivo `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/
```

### Código Principal (`main.dart`)
Certifique-se de que o código principal carregue o arquivo `.env` e inicialize o Firebase corretamente:
 
### Tela de Login e Registro (`login_screen.dart`)
A tela de login e registro deve estar configurada para registrar e autenticar usuários, além de salvar dados no Realtime Database:
 
### Serviço de Banco de Dados (`database_service.dart`)
A lógica para salvar dados no Realtime Database deve estar encapsulada em um serviço:
```dart
 

### Instruções Finais
- Certifique-se de que o arquivo `.env` está na pasta `assets` e que o caminho correto é especificado ao carregar o arquivo.
- Execute `flutter pub get` para garantir que todas as dependências estão instaladas.
 

Se precisar de mais informações ou ajuda, consulte a documentação oficial do Flutter e Firebase.


