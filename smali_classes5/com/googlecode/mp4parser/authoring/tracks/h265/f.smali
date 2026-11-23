.class public Lcom/googlecode/mp4parser/authoring/tracks/h265/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/googlecode/mp4parser/h264/read/b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;-><init>(Ljava/io/InputStream;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "sps_video_parameter_set_id"

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/googlecode/mp4parser/h264/read/b;->s(ILjava/lang/String;)J

    .line 13
    .line 14
    .line 15
    const-string p1, "sps_max_sub_layers_minus1"

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-virtual {v0, v2, p1}, Lcom/googlecode/mp4parser/h264/read/b;->s(ILjava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    long-to-int p1, v3

    .line 23
    const-string v3, "sps_temporal_id_nesting_flag"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/f;->a(ILcom/googlecode/mp4parser/h264/read/b;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "sps_seq_parameter_set_id"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v3, "chroma_format_idc"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne v3, v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/read/a;->h()I

    .line 45
    .line 46
    .line 47
    const-string v2, "pic_width_in_luma_samples"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const-string v2, "conformance_window_flag"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    const-string v2, "conf_win_left_offset"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const-string v2, "conf_win_right_offset"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const-string v2, "conf_win_top_offset"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    const-string v2, "conf_win_bottom_offset"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_0
    const-string v2, "bit_depth_luma_minus8"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const-string v2, "bit_depth_chroma_minus8"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    const-string v2, "log2_max_pic_order_cnt_lsb_minus4"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    const-string v2, "sps_sub_layer_ordering_info_present_flag"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v3, 0x0

    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    move v4, p1

    .line 110
    :goto_0
    sub-int v4, p1, v4

    .line 111
    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    new-array v5, v4, [I

    .line 115
    .line 116
    new-array v6, v4, [I

    .line 117
    .line 118
    new-array v4, v4, [I

    .line 119
    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    move v3, p1

    .line 124
    :goto_1
    if-le v3, p1, :cond_5

    .line 125
    .line 126
    const-string p1, "log2_min_luma_coding_block_size_minus3"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    const-string p1, "log2_diff_max_min_luma_coding_block_size"

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const-string p1, "log2_min_transform_block_size_minus2"

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    const-string p1, "log2_diff_max_min_transform_block_size"

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    const-string p1, "max_transform_hierarchy_depth_inter"

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    const-string p1, "max_transform_hierarchy_depth_intra"

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    const-string p1, "scaling_list_enabled_flag"

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_3

    .line 163
    .line 164
    const-string p1, "sps_scaling_list_data_present_flag"

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/f;->b(Lcom/googlecode/mp4parser/h264/read/b;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    const-string p1, "amp_enabled_flag"

    .line 176
    .line 177
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    const-string p1, "sample_adaptive_offset_enabled_flag"

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    const-string p1, "pcm_enabled_flag"

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_4

    .line 192
    .line 193
    const-string p1, "pcm_sample_bit_depth_luma_minus1"

    .line 194
    .line 195
    invoke-virtual {v0, v1, p1}, Lcom/googlecode/mp4parser/h264/read/b;->s(ILjava/lang/String;)J

    .line 196
    .line 197
    .line 198
    const-string p1, "pcm_sample_bit_depth_chroma_minus1"

    .line 199
    .line 200
    invoke-virtual {v0, v1, p1}, Lcom/googlecode/mp4parser/h264/read/b;->s(ILjava/lang/String;)J

    .line 201
    .line 202
    .line 203
    const-string p1, "log2_min_pcm_luma_coding_block_size_minus3"

    .line 204
    .line 205
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :cond_4
    return-void

    .line 209
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v7, "sps_max_dec_pic_buffering_minus1["

    .line 212
    .line 213
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v7, "]"

    .line 220
    .line 221
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    aput v2, v5, v3

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v8, "sps_max_num_reorder_pics["

    .line 237
    .line 238
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    aput v2, v6, v3

    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v8, "sps_max_latency_increase_plus1["

    .line 260
    .line 261
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    aput v2, v4, v3

    .line 279
    .line 280
    add-int/lit8 v3, v3, 0x1

    .line 281
    .line 282
    goto/16 :goto_1
.end method

.method private a(ILcom/googlecode/mp4parser/h264/read/b;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "general_profile_space"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v2, "general_tier_flag"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    const-string v2, "general_profile_idc"

    .line 17
    .line 18
    const/4 v4, 0x5

    .line 19
    invoke-virtual {v1, v4, v2}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x20

    .line 23
    .line 24
    new-array v5, v2, [Z

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    :goto_0
    if-lt v7, v2, :cond_7

    .line 28
    .line 29
    const-string v5, "general_progressive_source_flag"

    .line 30
    .line 31
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    const-string v5, "general_interlaced_source_flag"

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    const-string v5, "general_non_packed_constraint_flag"

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    const-string v5, "general_frame_only_constraint_flag"

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    const-string v5, "general_reserved_zero_44bits"

    .line 50
    .line 51
    const/16 v8, 0x2c

    .line 52
    .line 53
    invoke-virtual {v1, v8, v5}, Lcom/googlecode/mp4parser/h264/read/b;->s(ILjava/lang/String;)J

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/h264/read/a;->j()I

    .line 57
    .line 58
    .line 59
    new-array v9, v0, [Z

    .line 60
    .line 61
    new-array v10, v0, [Z

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    :goto_1
    const-string v7, "]"

    .line 65
    .line 66
    if-lt v5, v0, :cond_6

    .line 67
    .line 68
    const/16 v11, 0x8

    .line 69
    .line 70
    if-lez v0, :cond_1

    .line 71
    .line 72
    new-array v5, v11, [I

    .line 73
    .line 74
    move v12, v0

    .line 75
    :goto_2
    if-lt v12, v11, :cond_0

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v14, "reserved_zero_2bits["

    .line 81
    .line 82
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    invoke-virtual {v1, v3, v13}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    aput v13, v5, v12

    .line 100
    .line 101
    add-int/lit8 v12, v12, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    :goto_3
    new-array v12, v0, [I

    .line 105
    .line 106
    new-array v13, v0, [Z

    .line 107
    .line 108
    new-array v14, v0, [I

    .line 109
    .line 110
    filled-new-array {v0, v2}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 115
    .line 116
    invoke-static {v15, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    move-object v15, v5

    .line 121
    check-cast v15, [[Z

    .line 122
    .line 123
    new-array v5, v0, [Z

    .line 124
    .line 125
    new-array v6, v0, [Z

    .line 126
    .line 127
    new-array v11, v0, [Z

    .line 128
    .line 129
    new-array v8, v0, [Z

    .line 130
    .line 131
    new-array v2, v0, [J

    .line 132
    .line 133
    new-array v4, v0, [I

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    :goto_4
    if-lt v3, v0, :cond_2

    .line 137
    .line 138
    return-void

    .line 139
    :cond_2
    aget-boolean v17, v9, v3

    .line 140
    .line 141
    if-eqz v17, :cond_4

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    move-object/from16 v17, v9

    .line 146
    .line 147
    const-string v9, "sub_layer_profile_space["

    .line 148
    .line 149
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/4 v9, 0x2

    .line 163
    invoke-virtual {v1, v9, v0}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    aput v0, v12, v3

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v9, "sub_layer_tier_flag["

    .line 172
    .line 173
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    aput-boolean v0, v13, v3

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v9, "sub_layer_profile_idc["

    .line 195
    .line 196
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const/4 v9, 0x5

    .line 210
    invoke-virtual {v1, v9, v0}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    aput v0, v14, v3

    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    :goto_5
    const/16 v9, 0x20

    .line 218
    .line 219
    if-lt v0, v9, :cond_3

    .line 220
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v9, "sub_layer_progressive_source_flag["

    .line 224
    .line 225
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    aput-boolean v0, v5, v3

    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v9, "sub_layer_interlaced_source_flag["

    .line 247
    .line 248
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    aput-boolean v0, v6, v3

    .line 266
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v9, "sub_layer_non_packed_constraint_flag["

    .line 270
    .line 271
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    aput-boolean v0, v11, v3

    .line 289
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v9, "sub_layer_frame_only_constraint_flag["

    .line 293
    .line 294
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    aput-boolean v0, v8, v3

    .line 312
    .line 313
    const/16 v9, 0x2c

    .line 314
    .line 315
    invoke-virtual {v1, v9}, Lcom/googlecode/mp4parser/h264/read/a;->k(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v18

    .line 319
    aput-wide v18, v2, v3

    .line 320
    .line 321
    move-object/from16 v19, v2

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_3
    const/16 v9, 0x2c

    .line 325
    .line 326
    aget-object v16, v15, v3

    .line 327
    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    move-object/from16 v19, v2

    .line 331
    .line 332
    const-string v2, "sub_layer_profile_compatibility_flag["

    .line 333
    .line 334
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v2, "]["

    .line 341
    .line 342
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    aput-boolean v2, v16, v0

    .line 360
    .line 361
    add-int/lit8 v0, v0, 0x1

    .line 362
    .line 363
    move-object/from16 v2, v19

    .line 364
    .line 365
    goto/16 :goto_5

    .line 366
    .line 367
    :cond_4
    move-object/from16 v19, v2

    .line 368
    .line 369
    move-object/from16 v17, v9

    .line 370
    .line 371
    :goto_6
    aget-boolean v0, v10, v3

    .line 372
    .line 373
    if-eqz v0, :cond_5

    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v2, "sub_layer_level_idc["

    .line 378
    .line 379
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const/16 v2, 0x8

    .line 393
    .line 394
    invoke-virtual {v1, v2, v0}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    aput v0, v4, v3

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_5
    const/16 v2, 0x8

    .line 402
    .line 403
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 404
    .line 405
    move/from16 v0, p1

    .line 406
    .line 407
    move-object/from16 v9, v17

    .line 408
    .line 409
    move-object/from16 v2, v19

    .line 410
    .line 411
    goto/16 :goto_4

    .line 412
    .line 413
    :cond_6
    move-object/from16 v17, v9

    .line 414
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string v2, "sub_layer_profile_present_flag["

    .line 418
    .line 419
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    aput-boolean v0, v17, v5

    .line 437
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    const-string v2, "sub_layer_level_present_flag["

    .line 441
    .line 442
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    aput-boolean v0, v10, v5

    .line 460
    .line 461
    add-int/lit8 v5, v5, 0x1

    .line 462
    .line 463
    move/from16 v0, p1

    .line 464
    .line 465
    const/16 v2, 0x20

    .line 466
    .line 467
    const/4 v3, 0x2

    .line 468
    const/4 v4, 0x5

    .line 469
    const/16 v8, 0x2c

    .line 470
    .line 471
    goto/16 :goto_1

    .line 472
    .line 473
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/h264/read/a;->i()Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    aput-boolean v0, v5, v7

    .line 478
    .line 479
    add-int/lit8 v7, v7, 0x1

    .line 480
    .line 481
    move/from16 v0, p1

    .line 482
    .line 483
    const/16 v2, 0x20

    .line 484
    .line 485
    const/4 v3, 0x2

    .line 486
    const/4 v4, 0x5

    .line 487
    goto/16 :goto_0
.end method

.method private b(Lcom/googlecode/mp4parser/h264/read/b;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [[Z

    .line 5
    .line 6
    new-array v3, v1, [[I

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    new-array v5, v4, [[I

    .line 10
    .line 11
    new-array v6, v1, [[[I

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    :goto_0
    if-lt v8, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v9, 0x0

    .line 19
    :goto_1
    const/4 v10, 0x6

    .line 20
    const/4 v11, 0x3

    .line 21
    if-ne v8, v11, :cond_1

    .line 22
    .line 23
    const/4 v12, 0x2

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    const/4 v12, 0x6

    .line 26
    :goto_2
    if-lt v9, v12, :cond_2

    .line 27
    .line 28
    add-int/lit8 v8, v8, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-ne v8, v11, :cond_3

    .line 32
    .line 33
    const/4 v12, 0x2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    const/4 v12, 0x6

    .line 36
    :goto_3
    new-array v12, v12, [Z

    .line 37
    .line 38
    aput-object v12, v2, v8

    .line 39
    .line 40
    if-ne v8, v11, :cond_4

    .line 41
    .line 42
    const/4 v12, 0x2

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    const/4 v12, 0x6

    .line 45
    :goto_4
    new-array v12, v12, [I

    .line 46
    .line 47
    aput-object v12, v3, v8

    .line 48
    .line 49
    if-ne v8, v11, :cond_5

    .line 50
    .line 51
    const/4 v10, 0x2

    .line 52
    :cond_5
    new-array v10, v10, [[I

    .line 53
    .line 54
    aput-object v10, v6, v8

    .line 55
    .line 56
    aget-object v10, v2, v8

    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/h264/read/a;->i()Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    aput-boolean v11, v10, v9

    .line 63
    .line 64
    aget-object v10, v2, v8

    .line 65
    .line 66
    aget-boolean v10, v10, v9

    .line 67
    .line 68
    const-string v11, "]"

    .line 69
    .line 70
    if-nez v10, :cond_6

    .line 71
    .line 72
    aget-object v10, v3, v8

    .line 73
    .line 74
    new-instance v12, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v13, "scaling_list_pred_matrix_id_delta["

    .line 77
    .line 78
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v13, "]["

    .line 85
    .line 86
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v0, v11}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    aput v11, v10, v9

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_6
    shl-int/lit8 v10, v8, 0x1

    .line 107
    .line 108
    add-int/2addr v10, v1

    .line 109
    const/4 v12, 0x1

    .line 110
    shl-int v10, v12, v10

    .line 111
    .line 112
    const/16 v13, 0x40

    .line 113
    .line 114
    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    const/16 v13, 0x8

    .line 119
    .line 120
    if-le v8, v12, :cond_7

    .line 121
    .line 122
    add-int/lit8 v12, v8, -0x2

    .line 123
    .line 124
    aget-object v14, v5, v12

    .line 125
    .line 126
    new-instance v15, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v1, "scaling_list_dc_coef_minus8["

    .line 129
    .line 130
    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, "- 2]["

    .line 137
    .line 138
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    aput v1, v14, v9

    .line 156
    .line 157
    aget-object v1, v5, v12

    .line 158
    .line 159
    aget v1, v1, v9

    .line 160
    .line 161
    add-int/2addr v13, v1

    .line 162
    :cond_7
    aget-object v1, v6, v8

    .line 163
    .line 164
    new-array v11, v10, [I

    .line 165
    .line 166
    aput-object v11, v1, v9

    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    :goto_5
    if-lt v1, v10, :cond_8

    .line 170
    .line 171
    :goto_6
    add-int/lit8 v9, v9, 0x1

    .line 172
    .line 173
    const/4 v1, 0x4

    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_8
    const-string v11, "scaling_list_delta_coef "

    .line 177
    .line 178
    invoke-virtual {v0, v11}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    add-int/2addr v13, v11

    .line 183
    add-int/lit16 v13, v13, 0x100

    .line 184
    .line 185
    rem-int/lit16 v13, v13, 0x100

    .line 186
    .line 187
    aget-object v11, v6, v8

    .line 188
    .line 189
    aget-object v11, v11, v9

    .line 190
    .line 191
    aput v13, v11, v1

    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_5
.end method
