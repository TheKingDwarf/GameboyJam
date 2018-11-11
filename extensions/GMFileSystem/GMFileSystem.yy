{
    "id": "f31d7b91-e7a0-461b-b546-dc67f1269166",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "GMFileSystem",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 9223372036854775807,
    "date": "2018-30-29 05:03:08",
    "description": "Building out of the sandbox\\u000d\\u000a\\u000d\\u000aFilesystem improvements",
    "extensionName": "",
    "files": [
        {
            "id": "907e49fc-a5ce-434f-b7cd-20a0ce1fa767",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "359b02ab-f5b1-455c-b635-d750fb6fdb29",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "ENC_UTF8",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "a12de3dc-36e7-4f71-867e-74787eab9d89",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "ENC_UTF16_LE",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "04a95ea3-e242-426c-a0c5-23b9228cfb8e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "ENC_UTF16_BE",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "bcac0f1f-966c-4aa2-9b52-fcc8a448a388",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "ENC_UTF32_LE",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "504582c7-3cf6-4d75-96b6-323c65750b11",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "ENC_UTF32_BE",
                    "hidden": false,
                    "value": "0"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "GMFile.dll",
            "final": "",
            "functions": [
                {
                    "id": "c7237086-6009-4c5b-969e-4b631ecc0cc1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_create",
                    "help": "FS_directory_create(string dirname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_directory_create",
                    "returnType": 1
                },
                {
                    "id": "02dcf48a-d236-412c-b33b-92b16f26a786",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_delete",
                    "help": "FS_directory_delete(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_directory_delete",
                    "returnType": 2
                },
                {
                    "id": "b65fd94a-f9d3-43ec-8c9e-b3f6fe58e7dd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_exists",
                    "help": "FS_directory_exists(string dirname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_directory_exists",
                    "returnType": 2
                },
                {
                    "id": "5f5ec1d0-8ac8-4ac2-93ab-cb145892123a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_attributes",
                    "help": "FS_file_attributes(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_attributes",
                    "returnType": 2
                },
                {
                    "id": "716b4ba6-3530-4d67-bc7f-7c655ef2a560",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_bad",
                    "help": "FS_file_text_bad(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_bad",
                    "returnType": 2
                },
                {
                    "id": "0e962b3a-0cc5-484c-b39a-c00165dba672",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_bad",
                    "help": "FS_file_bin_bad(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_bad",
                    "returnType": 2
                },
                {
                    "id": "df62d24c-7689-474d-9085-ea2fa642e623",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_close",
                    "help": "FS_file_bin_close(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_close",
                    "returnType": 2
                },
                {
                    "id": "d31e72d9-3b32-4a1c-b4f3-69c055c4f7fa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_bin_open",
                    "help": "FS_file_bin_open(string filename, real mode)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_open",
                    "returnType": 2
                },
                {
                    "id": "6781fda5-208c-4708-99e8-377e1346e0c6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_position",
                    "help": "FS_file_bin_position(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_position",
                    "returnType": 2
                },
                {
                    "id": "3aff37c9-6e43-4829-ba8d-3a5a17f4d54a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_read_byte",
                    "help": "FS_file_bin_read_byte(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_read_byte",
                    "returnType": 2
                },
                {
                    "id": "d267f690-4921-4139-8d3c-ca5aad64af5f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_read_dword",
                    "help": "FS_file_bin_read_dword(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_read_dword",
                    "returnType": 2
                },
                {
                    "id": "9ebaf001-1e6a-47d7-a8d4-2cd50f464b12",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_read_word",
                    "help": "FS_file_bin_read_word(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_read_word",
                    "returnType": 2
                },
                {
                    "id": "26244608-8e59-4850-968f-efbb675d91a3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_bin_seek",
                    "help": "FS_file_bin_seek(real file, real position)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_seek",
                    "returnType": 2
                },
                {
                    "id": "f62dd185-15ad-417c-b7b4-d89f0f01c860",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "file_bin_seek_relative",
                    "help": "FS_file_bin_seek_relative(real file, real offset, real relative)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_seek_relative",
                    "returnType": 2
                },
                {
                    "id": "94ba3a16-ca29-4587-a88e-5f440a47eb35",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_size",
                    "help": "FS_file_bin_size(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_size",
                    "returnType": 2
                },
                {
                    "id": "95a73ebb-d5f1-42c0-b85b-c045105cd8e6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_bin_write_byte",
                    "help": "FS_file_bin_write_byte(real file, real byte)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_write_byte",
                    "returnType": 2
                },
                {
                    "id": "65beae8f-1adf-4801-97ee-b3a5872b0687",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_bin_write_dword",
                    "help": "FS_file_bin_write_dword(real file, real byte)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_write_dword",
                    "returnType": 2
                },
                {
                    "id": "e381df22-b107-4670-b611-64d852ae8ab6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_bin_write_word",
                    "help": "FS_file_bin_write_word(real file, real byte)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_write_word",
                    "returnType": 2
                },
                {
                    "id": "bb50ec0f-01a6-4447-b9fa-9de413da4eb4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_close",
                    "help": "FS_file_text_close(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_close",
                    "returnType": 2
                },
                {
                    "id": "52a029fb-d32a-4b38-9f9b-53a2439417eb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_copy",
                    "help": "FS_file_copy(string filename, string newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_copy",
                    "returnType": 2
                },
                {
                    "id": "1b7238e0-6715-40f9-83a4-a2f60741db8b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_delete",
                    "help": "FS_file_delete(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_delete",
                    "returnType": 2
                },
                {
                    "id": "331297f4-3de6-4b3f-9717-3c8e75d70f85",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_eof",
                    "help": "FS_file_text_eof(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_eof",
                    "returnType": 2
                },
                {
                    "id": "2b7f7377-d5df-42b3-97f0-b76ccd55597e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_eof",
                    "help": "FS_file_bin_eof(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_eof",
                    "returnType": 2
                },
                {
                    "id": "bd792801-8b57-4a63-863f-158a7f89dfc4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_eoln",
                    "help": "FS_file_text_eoln(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_eoln",
                    "returnType": 2
                },
                {
                    "id": "58285b3f-0ffd-4555-8292-25e192497680",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_exists",
                    "help": "FS_file_exists(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_exists",
                    "returnType": 2
                },
                {
                    "id": "5fa646e2-54d9-4be9-a1d6-13c6f00d0eb1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_fail",
                    "help": "FS_file_text_fail(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_fail",
                    "returnType": 2
                },
                {
                    "id": "cb164490-98a5-4582-875b-815b8b3d1826",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_fail",
                    "help": "FS_file_bin_fail(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_fail",
                    "returnType": 2
                },
                {
                    "id": "4aa57903-02e5-4980-a266-f4cfab758fae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_close",
                    "help": "FS_file_find_close()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_find_close",
                    "returnType": 2
                },
                {
                    "id": "f1e5271a-d2f1-4f93-9b58-12709f7e8d39",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "file_find_first",
                    "help": "FS_file_find_first(string mask, real attributes)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_find_first",
                    "returnType": 1
                },
                {
                    "id": "5d51280b-0bc3-405e-b189-597c2278a0a0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_find_next",
                    "help": "FS_file_find_next()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_find_next",
                    "returnType": 1
                },
                {
                    "id": "b79abbf9-ddad-4e51-a901-3e1961fafee4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_good",
                    "help": "FS_file_text_good(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_good",
                    "returnType": 2
                },
                {
                    "id": "9f52f410-8f16-43e1-94f2-5f978dce02fa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_good",
                    "help": "FS_file_bin_good(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_good",
                    "returnType": 2
                },
                {
                    "id": "ababaef1-05f7-4df2-9dfe-ddbe58230fe5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_rename",
                    "help": "FS_file_rename(string filename, string newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_rename",
                    "returnType": 2
                },
                {
                    "id": "341f9a30-3235-4c1e-a511-94f1984a5820",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_clear_bad",
                    "help": "FS_file_text_clear_bad(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_clear_bad",
                    "returnType": 2
                },
                {
                    "id": "8f565c0f-c415-4c4c-9974-b7fe958058ec",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_clear_bad",
                    "help": "FS_file_bin_clear_bad(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_clear_bad",
                    "returnType": 2
                },
                {
                    "id": "0a29fdba-d9d7-40fa-a3db-79d1db783f88",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_clear_fail",
                    "help": "FS_file_text_clear_fail(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_clear_fail",
                    "returnType": 2
                },
                {
                    "id": "c45048ec-146d-444a-b2cc-012dee65eadf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_clear_fail",
                    "help": "FS_file_bin_clear_fail(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_clear_fail",
                    "returnType": 2
                },
                {
                    "id": "da6473aa-8f04-4298-8dff-7011c6e47315",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "file_text_open_append_ext",
                    "help": "file_text_open_append_ext(string fname, real encoding, real forced)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_open_append_ext",
                    "returnType": 2
                },
                {
                    "id": "6abfc87f-32c6-4e4f-8d40-ed24b87cd4ab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_text_open_append",
                    "help": "FS_file_text_open_append(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_open_append",
                    "returnType": 2
                },
                {
                    "id": "3d2fb5ba-438a-4601-94e2-dc9c82f61df2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "file_text_open_read_ext",
                    "help": "file_text_open_read_ext(string fname, real encoding, real forced)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_open_read_ext",
                    "returnType": 2
                },
                {
                    "id": "62de3e59-8583-4ff6-94fb-8a53122d593b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_text_open_read",
                    "help": "FS_file_text_open_read(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_open_read",
                    "returnType": 2
                },
                {
                    "id": "49519720-be6b-4a16-aea3-e858a4cf10ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "file_text_open_write_ext",
                    "help": "file_text_open_write_ext(string fname, real encoding, real forced)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_open_write_ext",
                    "returnType": 2
                },
                {
                    "id": "aeaff4a4-654f-477e-b248-fe8d46ecc928",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_text_open_write",
                    "help": "FS_file_text_open_write(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_open_write",
                    "returnType": 2
                },
                {
                    "id": "36cc26ef-6284-4f56-9dfb-bc9e89914036",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_text_read_char",
                    "help": "FS_file_text_read_char(real file, real num)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_read_char",
                    "returnType": 1
                },
                {
                    "id": "27a9c86e-407e-4f41-9438-7d3269901143",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_read_real",
                    "help": "FS_file_text_read_real(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_read_real",
                    "returnType": 2
                },
                {
                    "id": "f2a43ee4-56f3-40c8-8ccc-866eac0d9426",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_read_string",
                    "help": "FS_file_text_read_string(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_read_string",
                    "returnType": 1
                },
                {
                    "id": "edfe3219-5e92-48b8-a819-089768da7302",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_readln",
                    "help": "FS_file_text_readln(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_readln",
                    "returnType": 2
                },
                {
                    "id": "16cd8eaa-2619-4a85-b6d7-19fb6ce650c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_unread",
                    "help": "FS_file_text_unread(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_unread",
                    "returnType": 2
                },
                {
                    "id": "ed0fb817-6a7e-492d-9236-8a6f9aaf7077",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "file_text_write_real",
                    "help": "FS_file_text_write_real(real file, real input)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_write_real",
                    "returnType": 2
                },
                {
                    "id": "754d4312-75cb-4fc1-8d66-a604559aa948",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "file_text_write_string",
                    "help": "FS_file_text_write_string(real file, string input)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_write_string",
                    "returnType": 2
                },
                {
                    "id": "b84df4cc-a40c-48ba-bf33-ddd433482fc3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_writeln",
                    "help": "FS_file_text_writeln(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_writeln",
                    "returnType": 2
                },
                {
                    "id": "007baacd-06a1-4d76-a3e6-3cdbe24de6be",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_write_bom",
                    "help": "file_text_write_bom(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_write_bom",
                    "returnType": 2
                },
                {
                    "id": "62a26645-15c7-43ce-bde3-878ee4b1d321",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_text_write_flush",
                    "help": "FS_file_text_write_flush(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_write_flush",
                    "returnType": 2
                },
                {
                    "id": "496b6447-dc15-4476-9ce6-0521bdc83fd9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "file_bin_write_flush",
                    "help": "FS_file_bin_write_flush(real file)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_bin_write_flush",
                    "returnType": 2
                },
                {
                    "id": "c5630fd1-cf8c-474e-996f-617f43d9d541",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "max_open",
                    "help": "FS_max_open()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_max_open",
                    "returnType": 2
                },
                {
                    "id": "ed950fbd-dc1c-4409-bca4-828bd88b711a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "set_locale",
                    "help": "FS_set_locale(string locale)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_set_locale",
                    "returnType": 2
                },
                {
                    "id": "26336693-3826-4a90-9108-a04ed9b1064b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_text_set_endl",
                    "help": "file_text_set_endl(string endlinestring)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_set_endl",
                    "returnType": 2
                },
                {
                    "id": "63fb3bf5-c375-4fd1-8891-983fac387fad",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_text_set_endl_windows",
                    "help": "file_text_set_endl_windows()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_set_endl_windows",
                    "returnType": 2
                },
                {
                    "id": "a4728162-9f6b-4f6c-a6e8-f60c7588dea4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "file_text_set_endl_posix",
                    "help": "file_text_set_endl_posix()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_file_text_set_endl_posix",
                    "returnType": 2
                },
                {
                    "id": "a31ce726-8385-42c0-bca4-52591f383ba7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "current_directory",
                    "help": "FS_current_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_current_directory",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\/GMFile.dll",
            "uncompress": false
        },
        {
            "id": "5498ab0f-086b-4b22-8bb3-adb999247a5c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "GMIni.dll",
            "final": "",
            "functions": [
                {
                    "id": "6dd357aa-0131-4085-9b7e-341f22be001a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "ini_close",
                    "help": "FS_ini_close()",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_close",
                    "returnType": 2
                },
                {
                    "id": "be329519-a1df-4fa5-a2df-77e910dfade0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "ini_close_ext",
                    "help": "FS_ini_close_ext(real ini)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_close_ext",
                    "returnType": 2
                },
                {
                    "id": "4b419f9d-26b0-4f3f-8016-cd446e95c652",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "ini_key_delete",
                    "help": "FS_ini_key_delete(string section, string key)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_key_delete",
                    "returnType": 2
                },
                {
                    "id": "4d15763c-bf79-4f5d-99d0-c6bfebc9e539",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        1
                    ],
                    "externalName": "ini_key_delete_ext",
                    "help": "FS_ini_key_delete_ext(real ini, string section, string key)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_key_delete_ext",
                    "returnType": 2
                },
                {
                    "id": "6d648491-3c7c-4101-8b7a-7374ce201c81",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "ini_key_exists",
                    "help": "FS_ini_key_exists(string section, string key)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_key_exists",
                    "returnType": 2
                },
                {
                    "id": "e02dbd21-9e61-4947-969d-579bc393451a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        1
                    ],
                    "externalName": "ini_key_exists_ext",
                    "help": "FS_ini_key_exists_ext(real ini, string section, string key)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_key_exists_ext",
                    "returnType": 2
                },
                {
                    "id": "b6d6e5b2-4ae5-4f22-9551-ccbf25a65fcb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "ini_open",
                    "help": "FS_ini_open(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_open",
                    "returnType": 2
                },
                {
                    "id": "f09948c0-eda0-4948-a6be-6ea82e99fdbc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "ini_open_ext",
                    "help": "FS_ini_open_ext(string filename)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_open_ext",
                    "returnType": 2
                },
                {
                    "id": "b0911732-9a52-4dbb-9143-ab0f7a2adaab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "ini_read_real",
                    "help": "FS_ini_read_real(string section, string key, real def)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_read_real",
                    "returnType": 2
                },
                {
                    "id": "92d39d1d-b051-4603-b8d7-dc20f6df5abe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        1,
                        2
                    ],
                    "externalName": "ini_read_real_ext",
                    "help": "FS_ini_read_real_ext(real ini, string section, string key, real def)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_read_real_ext",
                    "returnType": 2
                },
                {
                    "id": "2fb9fd15-7c6b-4327-9ed8-74df2e739a95",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "ini_read_string",
                    "help": "FS_ini_read_string(string section, string key, string def)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_read_string",
                    "returnType": 1
                },
                {
                    "id": "54845289-e194-41d0-8f74-6bc2ce745253",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        1,
                        1
                    ],
                    "externalName": "ini_read_string_ext",
                    "help": "FS_ini_read_string_ext(real ini, string section, string key, string def)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_read_string_ext",
                    "returnType": 1
                },
                {
                    "id": "b0db0c3d-e81e-482f-9d03-1025331521b6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "ini_section_delete",
                    "help": "FS_ini_section_delete(string section)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_section_delete",
                    "returnType": 2
                },
                {
                    "id": "bc988369-1e78-4339-86b8-b937c9921957",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "ini_section_delete_ext",
                    "help": "FS_ini_section_delete_ext(real ini, string section)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_section_delete_ext",
                    "returnType": 2
                },
                {
                    "id": "72d35779-07fb-4434-aaa5-e9180ba52c79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "ini_section_exists",
                    "help": "FS_ini_section_exists(string section)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_section_exists",
                    "returnType": 2
                },
                {
                    "id": "ac294acb-76d4-468e-8271-87ab44fe8d8d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "ini_section_exists_ext",
                    "help": "FS_ini_section_exists_ext(real ini, string section)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_section_exists_ext",
                    "returnType": 2
                },
                {
                    "id": "f975d0d4-4b36-4166-ab0b-51e2a967a4f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        2
                    ],
                    "externalName": "ini_write_real",
                    "help": "FS_ini_write_real(string section, string key, real value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_write_real",
                    "returnType": 2
                },
                {
                    "id": "ce2ec12b-ef4c-4a70-a88c-723ccccd99d0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        1,
                        2
                    ],
                    "externalName": "ini_write_real_ext",
                    "help": "FS_ini_write_real_ext(real ini, string section, string key, real value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_write_real_ext",
                    "returnType": 2
                },
                {
                    "id": "f9870f9a-1721-4a88-916c-d10568461126",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "ini_write_string",
                    "help": "FS_ini_write_string(string section, string key, string value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_write_string",
                    "returnType": 2
                },
                {
                    "id": "1d9beb16-7f1b-4100-868a-923d75f7443c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        1,
                        1,
                        1
                    ],
                    "externalName": "ini_write_string_ext",
                    "help": "FS_ini_write_string_ext(real ini, string section, string key, string value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "FS_ini_write_string_ext",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\/GMIni.dll",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Copyright (c) 2013, Paul Weijtens\\u000d\\u000aAll rights reserved.\\u000d\\u000a\\u000d\\u000aRedistribution and use in source and binary forms, with or without\\u000d\\u000amodification, are permitted provided that the following conditions are met:\\u000d\\u000a    * Redistributions of source code must retain the above copyright\\u000d\\u000a      notice, this list of conditions and the following disclaimer.\\u000d\\u000a    * Redistributions in binary form must reproduce the above copyright\\u000d\\u000a      notice, this list of conditions and the following disclaimer in the\\u000d\\u000a      documentation and\/or other materials provided with the distribution.\\u000d\\u000a    * Neither the name of the Paul Weijtens nor the\\u000d\\u000a      names of its contributors may be used to endorse or promote products\\u000d\\u000a\\u000d\\u000a      derived from this software without specific prior written permission.\\u000d\\u000aTHIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND\\u000d\\u000aANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED\\u000d\\u000aWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE\\u000d\\u000aDISCLAIMED. IN NO EVENT SHALL Paul Weijtens BE LIABLE FOR ANY\\u000d\\u000aDIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\\u000d\\u000a(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;\\u000d\\u000aLOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND\\u000d\\u000aON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\\u000d\\u000a(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS\\u000d\\u000aSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": null,
    "tvosmaccompilerflags": null,
    "tvosmaclinkerflags": null,
    "tvosplistinject": null,
    "version": "1.4.4"
}