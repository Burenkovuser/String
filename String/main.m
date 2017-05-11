//
//  main.m
//  String
//
//  Created by Vasilii on 17.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
        //создание строки
        NSString *string = @"sting";
        NSLog(@"%@",string);
        
        //объединение строк
        NSString *beginning = @"beginning";
        NSString *alphaAndOmega = [beginning stringByAppendingString:@" and end"];
        NSLog(@"alphaAndOmega %@", alphaAndOmega);
        
        //извлечение строк
        NSString * source = @"0123456789";
        NSString * firstFour = [source substringToIndex:4];
        NSLog(@"firstFour %@", firstFour);
        
        NSString *allButfirstThree = [source substringFromIndex:4];
        NSLog(@"allButfirstThree %@", allButfirstThree);
        
        NSRange twoToSixRange = NSMakeRange(2, 4);
        NSString *twoToSix = [source substringWithRange:twoToSixRange];
        NSLog(@"twoToSix %@", twoToSix);
        
        NSArray *split = [source componentsSeparatedByString:@"45"];
        NSLog(@"split %@", split);
        
        //форматирование
        
        NSString *string1 = [NSString stringWithFormat:@"A string: %@, float: %1.2f", @"string", 31415.93] ;
        NSLog(@"string1 %@", string1);
        
        NSNumber *number = [NSNumber numberWithInt:1234];
        NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSDate date] forKey:@"date"];
        NSString *baseString = @"Base sting.";
        NSString *string2 = [baseString stringByAppendingFormat:@" A number %@, a dictionary: %@", number, dictionary];
        NSLog(@"Sring2, %@", string2);
        NSLog(@"Dictionary: %@", dictionary);
        
        //поиск префиксов и суфиксов без учета регистра
        NSString *searchString = @"age";
        NSString *beginsTest = @"Agencies";
        NSRange prefixRange = [beginsTest rangeOfString:searchString options:(NSAnchoredSearch | NSCaseInsensitiveSearch)];//опции в начале и в конце, игнорируется регистр
        NSLog(@"PerfixRange: %@", [beginsTest substringWithRange:prefixRange]);
        
        NSString *endsTest = @"BRICOLAGE";
        NSRange suffixRange = [endsTest rangeOfString:endsTest options:(NSAnchoredSearch | NSCaseInsensitiveSearch | NSBackwardsSearch )];
        NSLog(@"SuffixRange: %@", [endsTest substringWithRange:suffixRange]);
        
        //сравнение строк
        NSString *string3 = @"string3";
        NSString *string4 = @"string4";
        NSComparisonResult result;
        result = [string3 compare:string4];
        //result = -1 (NSOrderedAscending)
        
        //сравнение строк численно с использованием опции NSNumericSearch
        NSString *string10 = @"string10";
        NSString *string5 = @"string5";
        NSComparisonResult result1;
        result1 = [string10 compare:string5];
        //result1 = -1 (NSOrderedAscending)
        result1 = [string10 compare:string5 options:NSNumericSearch];
        //result1 = 1 (NSOrderedDescending)
        
        */
        
        //Кочан
        NSString *str1 = @"Это строка А";
        NSString *str2 = @"Это строка В";
        NSString *res;
        NSComparisonResult compareResult;//будет содержать результат операции сравнения строк
        
        //Подсчет числа знаков
        NSLog(@"Длина str1: %lu", [str1 length]);
        
        //Копирование одной строки в другую
        res = [NSString stringWithString:str1];
        NSLog(@"Копия: %@", res);
        
        //Копирование одной строки в конец другой
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"Объединение %@", str2);
        
        //Проверка двух строк на равенство
        if ([str1 isEqualToString:res]) {
            NSLog(@"str1 == res");
        } else {
            NSLog(@"str1 != res");
        }
        
        //Проверка одна строка меньше, равна или больше чем другая
        compareResult = [str1 compare:str2];
        if (compareResult == NSOrderedAscending) //упорядочить по взрастанию
            NSLog(@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else if (compareResult == NSOrderedDescending)
            NSLog(@"str1 > str2");
        
        //Преобразование букв в ВВЕРХНИЙ РЕГИСТР
        res = [str1 uppercaseString];
        NSLog(@"Преобразование в верхний регистр %s", [res UTF8String]);
        
        //Преобразование в нижний регистр
        res = [str1 lowercaseString];
        NSLog(@"Преобразование в нижний регистр: %@", res);
        NSLog(@"Оригинальная строка %@", str1);
    }
    return 0;
}
