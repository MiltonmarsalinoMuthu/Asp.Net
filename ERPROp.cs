using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cmspprj
{
    class ERPROp
    {
        public int rno { get; set; }
        public string sname { get; set; }

        public double m1 { get; set; }
        public double m2 { get; set; }

        public double tot
        {
            get
            {
                return m1 + m2;
            }
        }

        public double avg
        {
            get
            {

                return tot / 2;
            }
        }

        public string res
        {
            get
            {

                return m1 > 34.4 && m2 > 34.4 ? "Pass" : "Fail";
            }
        }
    }
}
