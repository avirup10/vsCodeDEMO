import { LightningElement, api } from 'lwc';

export default class cmpRenderL extends LightningElement {
    @api items = [
        {
            id:'001',
            itemname:'Item1',
            itemdesc:'Description for Item1'
        },
        {
            id:'002',
            itemname:'Item2',
            itemdesc:'Description for Item2'
        },
        {
            id:'003',
            itemname:'Item3',
            itemdesc:'Description for Item3'
        },
        {
            id:'004',
            itemname:'Item4',
            itemdesc:'Description for Item4'
        }
    ];
}