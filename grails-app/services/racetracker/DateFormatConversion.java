package com.msnyu.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateFormatConversion {
/**
 * Format a time from a given format to given target format
 * @param outputFormat
 * @param inputFormat
 * @param inputTimeStamp
 * @return
 * @throws ParseException
 */
	public static String getFromToDateFormat(final String outputFormat,final String inputFormat,final String inputTimeStamp) throws ParseException {
	
		return new SimpleDateFormat(outputFormat).format(new SimpleDateFormat(inputFormat).parse(inputTimeStamp));


	}

}
