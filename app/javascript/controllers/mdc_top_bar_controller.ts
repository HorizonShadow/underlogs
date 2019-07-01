import { Controller } from 'stimulus';
import {MDCTopAppBar} from '@material/top-app-bar';

export default class extends Controller {
    connect() {
        new MDCTopAppBar(this.element);
    }
}