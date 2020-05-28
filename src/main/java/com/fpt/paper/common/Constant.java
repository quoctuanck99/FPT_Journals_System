
package com.fpt.paper.common;

import java.math.BigInteger;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;


public class Constant {

    public static SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");

    public static final String ENTER = "\n";
    public static final String SPACE = " ";
    public static final String MASK = "\"";
    public static final String PLUS = "\\+";
    public static final String MINUS = "\\-";

    public static final Integer ROW_PER_PAGE= 25;
    public static class CUSTOMER{
        public static final Long ACTIVE=1L;

        public static final Long DISABLE=0L;
        public static final Long SEND_ACCOUNT=0L;
        public  static final Long NOT_SEND=1L;

    }




}
