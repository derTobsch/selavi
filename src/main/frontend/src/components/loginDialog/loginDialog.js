import { connect } from 'react-redux';

import { onCancel, onSubmit } from './loginDialog.actions';
import LoginDialogComponent from './loginDialog.component';

const mapStateToProps = (state) => ({
  menuMode: state.app.menuMode,
  loginErrorMessage: state.app.loginErrorMessage
});

const mapDispatchToProps = {
  onCancel,
  onSubmit
};

const LoginDialog = connect(mapStateToProps, mapDispatchToProps)(LoginDialogComponent);
export default LoginDialog;
