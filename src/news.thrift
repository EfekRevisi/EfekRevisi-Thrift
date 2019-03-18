/*
 * news.thrift
 *
 * @author Irfan Andriansyah <irfanandriansyah10@gmail.com>
 *
 * This file contains thrift definitions for UrbanIndo Criteria Property.
 */

namespace java com.efekRevisi.thrift.news
namespace js efekRevisi.ThriftServices.news
namespace py efekRevisi.ThriftServices.news

/**
 * Struct for property criteria parameter.
 */
struct News {

    1: required i32 newsID,

    2: required string title,

    3: required string thumbnail,

    4: required string date,

    5: required string description
}

struct NewsList {

    1: required list<News> items;
}

/**
 * Structs can also be exceptions, if they are nasty.
 */
exception ErrorHandling {
  1: i32 idError,
  2: string message
}


/**
 * All of the endpoints are sessionfull.
 */
service NewsService {
    NewsList getNews() throws (
        1:ErrorHandling ex1
    );
}