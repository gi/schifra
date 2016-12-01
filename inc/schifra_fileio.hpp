/*
(**************************************************************************)
(*                                                                        *)
(*                                Schifra                                 *)
(*                Reed-Solomon Error Correcting Code Library              *)
(*                                                                        *)
(* Release Version 0.0.1                                                  *)
(* http://www.schifra.com                                                 *)
(* Copyright (c) 2000-2014 Arash Partow, All Rights Reserved.             *)
(*                                                                        *)
(* The Schifra Reed-Solomon error correcting code library and all its     *)
(* components are supplied under the terms of the General Schifra License *)
(* agreement. The contents of the Schifra Reed-Solomon error correcting   *)
(* code library and all its components may not be copied or disclosed     *)
(* except in accordance with the terms of that agreement.                 *)
(*                                                                        *)
(* URL: http://www.schifra.com/license.html                               *)
(*                                                                        *)
(**************************************************************************)
*/


#ifndef INCLUDE_SCHIFRA_FILEIO_HPP
#define INCLUDE_SCHIFRA_FILEIO_HPP


#include <string>
#include <vector>

#include "schifra_crc.hpp"

namespace schifra
{

   namespace fileio
   {

      void read_into_vector(const std::string& file_name, std::vector<std::string>& buffer);

      void write_from_vector(const std::string& file_name, const std::vector<std::string>& buffer);

      bool file_exists(const std::string& file_name);

      std::size_t file_size(const std::string& file_name);

      void load_file(const std::string& file_name, std::string& buffer);

      void load_file(const std::string& file_name, char** buffer, std::size_t& buffer_size);

      void write_file(const std::string& file_name, const std::string& buffer);

      void write_file(const std::string& file_name, char* buffer, const std::size_t& buffer_size);

      bool copy_file(const std::string& src_file_name, const std::string& dest_file_name);

      bool files_identical(const std::string& file_name1, const std::string& file_name2);

      std::size_t file_crc(const crc32& crc_module, const std::string& file_name);

   } // namespace fileio

} // namespace schifra

#endif
