package javaReview;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {

	public static void main(String[] args) throws IOException {

//		File file = new File("C:/Temp/test.txt");
		File file = new File("C:/Temp","test.txt");
		File dir = new File("E:\\dev\\eclipse");
		
		String[] list = dir.list();
		for(String temp : list) {
			System.out.println(temp);
		}
		
		// 폴더 생성
		File newFile = new File("C:/Temp/imgaes");
//		newFile.mkdir();
		
		// 파일 삭제
//		file.deleteOnExit();
		// 파일 복사
		FileInputStream src = new FileInputStream("C:\\Users\\Public\\Pictures\\Sample Pictures\\Koala.jpg");
		FileOutputStream des = new FileOutputStream("C:/Temp/imgaes/copied.jpg");
		
		byte[] data = new byte[100];
		int size = 0;
		while( (size = src.read(data)) > -1 ) {
			des.write(data);
		}
		src.close();
		des.close();
	}

}
