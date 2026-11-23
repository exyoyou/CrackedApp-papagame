.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lf5/h;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lf5/e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->f:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->g:Z

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/googlecode/mp4parser/h264/read/b;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;-><init>(Ljava/io/InputStream;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "SliceHeader: first_mb_in_slice"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->a:I

    .line 24
    .line 25
    const-string p1, "SliceHeader: slice_type"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->SI:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->b:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->SP:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->b:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->I:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->b:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_3
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->B:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->b:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_4
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->P:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->b:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 58
    .line 59
    :goto_0
    const-string p1, "SliceHeader: pic_parameter_set_id"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->c:I

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lf5/e;

    .line 76
    .line 77
    iget p3, p1, Lf5/e;->f:I

    .line 78
    .line 79
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lf5/h;

    .line 88
    .line 89
    iget-boolean p3, p2, Lf5/h;->A:Z

    .line 90
    .line 91
    if-eqz p3, :cond_0

    .line 92
    .line 93
    const-string p3, "SliceHeader: colour_plane_id"

    .line 94
    .line 95
    const/4 v1, 0x2

    .line 96
    invoke-virtual {v0, v1, p3}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->d:I

    .line 101
    .line 102
    :cond_0
    iget p3, p2, Lf5/h;->j:I

    .line 103
    .line 104
    add-int/lit8 p3, p3, 0x4

    .line 105
    .line 106
    const-string v1, "SliceHeader: frame_num"

    .line 107
    .line 108
    invoke-virtual {v0, p3, v1}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->e:I

    .line 113
    .line 114
    iget-boolean p3, p2, Lf5/h;->F:Z

    .line 115
    .line 116
    if-nez p3, :cond_1

    .line 117
    .line 118
    const-string p3, "SliceHeader: field_pic_flag"

    .line 119
    .line 120
    invoke-virtual {v0, p3}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    iput-boolean p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->f:Z

    .line 125
    .line 126
    if-eqz p3, :cond_1

    .line 127
    .line 128
    const-string p3, "SliceHeader: bottom_field_flag"

    .line 129
    .line 130
    invoke-virtual {v0, p3}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    iput-boolean p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->g:Z

    .line 135
    .line 136
    :cond_1
    if-eqz p4, :cond_2

    .line 137
    .line 138
    const-string p3, "SliceHeader: idr_pic_id"

    .line 139
    .line 140
    invoke-virtual {v0, p3}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->h:I

    .line 145
    .line 146
    :cond_2
    iget p3, p2, Lf5/h;->a:I

    .line 147
    .line 148
    if-nez p3, :cond_3

    .line 149
    .line 150
    iget p3, p2, Lf5/h;->k:I

    .line 151
    .line 152
    add-int/lit8 p3, p3, 0x4

    .line 153
    .line 154
    const-string p4, "SliceHeader: pic_order_cnt_lsb"

    .line 155
    .line 156
    invoke-virtual {v0, p3, p4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->i:I

    .line 161
    .line 162
    iget-boolean p3, p1, Lf5/e;->g:Z

    .line 163
    .line 164
    if-eqz p3, :cond_3

    .line 165
    .line 166
    iget-boolean p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->f:Z

    .line 167
    .line 168
    if-nez p3, :cond_3

    .line 169
    .line 170
    const-string p3, "SliceHeader: delta_pic_order_cnt_bottom"

    .line 171
    .line 172
    invoke-virtual {v0, p3}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->j:I

    .line 177
    .line 178
    :cond_3
    iget p3, p2, Lf5/h;->a:I

    .line 179
    .line 180
    const/4 p4, 0x1

    .line 181
    if-ne p3, p4, :cond_4

    .line 182
    .line 183
    iget-boolean p2, p2, Lf5/h;->c:Z

    .line 184
    .line 185
    if-nez p2, :cond_4

    .line 186
    .line 187
    const-string p2, "delta_pic_order_cnt_0"

    .line 188
    .line 189
    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    iput p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->k:I

    .line 194
    .line 195
    iget-boolean p1, p1, Lf5/e;->g:Z

    .line 196
    .line 197
    if-eqz p1, :cond_4

    .line 198
    .line 199
    iget-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->f:Z

    .line 200
    .line 201
    if-nez p1, :cond_4

    .line 202
    .line 203
    const-string p1, "delta_pic_order_cnt_1"

    .line 204
    .line 205
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->l:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    :cond_4
    return-void

    .line 212
    :catch_0
    move-exception p1

    .line 213
    new-instance p2, Ljava/lang/RuntimeException;

    .line 214
    .line 215
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    throw p2

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SliceHeader{first_mb_in_slice="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", slice_type="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->b:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", pic_parameter_set_id="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", colour_plane_id="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", frame_num="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->e:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", field_pic_flag="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->f:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", bottom_field_flag="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->g:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", idr_pic_id="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->h:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", pic_order_cnt_lsb="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->i:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", delta_pic_order_cnt_bottom="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->j:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 v1, 0x7d

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method
