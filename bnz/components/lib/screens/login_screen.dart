import 'package:flutter/material.dart';
import '../constants/theme_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _cpfCnpjController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _cpfCnpjController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: ThemeConstants.white,
            borderRadius: BorderRadius.circular(ThemeConstants.borderRadius),
            boxShadow: [
              BoxShadow(
                color: ThemeConstants.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(27, 73, 27, 174),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Login',
                      style: ThemeConstants.titleStyle,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/ec4dc89c85677d67aaf7e7e682577367cc2d639c7640522e1e181d5b1bb9da87?placeholderIfAbsent=true&apiKey=4c1f330f94664ed8b6edf7dc2c55375d',
                      width: 102,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Text(
                      'Preencha com seus dados para entrar',
                      style: ThemeConstants.bodyStyle,
                    ),
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '*',
                            style: ThemeConstants.bodyStyle.copyWith(
                              color: ThemeConstants.requiredRed,
                            ),
                          ),
                          TextSpan(
                            text: 'CPF/CNPJ',
                            style: ThemeConstants.bodyStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Container(
                      width: 292,
                      height: ThemeConstants.inputHeight,
                      decoration: BoxDecoration(
                        color: ThemeConstants.inputBackground,
                        borderRadius: BorderRadius.circular(ThemeConstants.borderRadius),
                      ),
                      child: TextFormField(
                        controller: _cpfCnpjController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '*',
                            style: ThemeConstants.bodyStyle.copyWith(
                              color: ThemeConstants.requiredRed,
                            ),
                          ),
                          TextSpan(
                            text: 'Senha',
                            style: ThemeConstants.bodyStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Container(
                      width: 292,
                      height: ThemeConstants.inputHeight,
                      decoration: BoxDecoration(
                        color: ThemeConstants.inputBackground,
                        borderRadius: BorderRadius.circular(ThemeConstants.borderRadius),
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: ThemeConstants.smallText,
                        children: const [
                          TextSpan(text: 'Os campos com ('),
                          TextSpan(
                            text: '*',
                            style: TextStyle(color: ThemeConstants.requiredRed),
                          ),
                          TextSpan(text: ') são obrigatórios.'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Container(
                      width: 206,
                      decoration: BoxDecoration(
                        color: ThemeConstants.primaryBlue,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: ThemeConstants.black.withOpacity(0.35),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // Handle login
                            }
                          },
                          borderRadius: BorderRadius.circular(5),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                              style: ThemeConstants.buttonText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Center(
                    child: Container(
                      width: 206,
                      decoration: BoxDecoration(
                        color: ThemeConstants.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: ThemeConstants.black.withOpacity(0.3),
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            // Handle forgot password
                          },
                          borderRadius: BorderRadius.circular(5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 30,
                            ),
                            child: Text(
                              'Esqueceu sua senha?',
                              textAlign: TextAlign.center,
                              style: ThemeConstants.bodyStyle.copyWith(
                                fontSize: 13,
                                color: ThemeConstants.primaryBlue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // Handle registration
                      },
                      child: Text(
                        'Cadastrar-se',
                        style: ThemeConstants.smallText.copyWith(
                          color: ThemeConstants.primaryBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}