.class public Lcom/byazt/tv/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xef,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/tv/tt$c;,
        Lcom/byazt/tv/tt$tt;
    }
.end annotation


# static fields
.field public static final a:[Lcom/byazt/tv/c;

.field public static final c:[I

.field public static final tt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/tv/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final ve:[Lcom/byazt/tv/tt$tt;


# instance fields
.field public final n:Lcom/byazt/tv/tt$c;

.field public sp:Ljava/lang/String;

.field public final uj:Lcom/byazt/lu/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lcom/byazt/tv/tt;->c:[I

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/byazt/tv/tt;->tt:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v1, Lcom/byazt/tv/i;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/byazt/tv/i;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/c;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/byazt/tv/a;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/byazt/tv/a;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/c;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/byazt/tv/da;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/byazt/tv/da;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/c;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/byazt/tv/x;

    .line 40
    .line 41
    invoke-direct {v1}, Lcom/byazt/tv/x;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    new-array v2, v1, [Lcom/byazt/tv/c;

    .line 49
    .line 50
    new-instance v3, Lcom/byazt/tv/ve;

    .line 51
    .line 52
    invoke-direct {v3}, Lcom/byazt/tv/ve;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    aput-object v3, v2, v4

    .line 57
    .line 58
    new-instance v3, Lcom/byazt/tv/n;

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-direct {v3, v5, v4, v5}, Lcom/byazt/tv/n;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    aput-object v3, v2, v0

    .line 65
    .line 66
    new-instance v3, Lcom/byazt/tv/uj;

    .line 67
    .line 68
    new-instance v5, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v6, ""

    .line 74
    .line 75
    invoke-direct {v3, v6, v5}, Lcom/byazt/tv/uj;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x2

    .line 79
    aput-object v3, v2, v5

    .line 80
    .line 81
    sput-object v2, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    :goto_0
    if-ge v3, v1, :cond_0

    .line 85
    .line 86
    aget-object v6, v2, v3

    .line 87
    .line 88
    invoke-static {v6}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/c;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-array v1, v1, [Lcom/byazt/tv/tt$tt;

    .line 95
    .line 96
    new-instance v2, Lcom/byazt/tv/tt$tt;

    .line 97
    .line 98
    invoke-direct {v2}, Lcom/byazt/tv/tt$tt;-><init>()V

    .line 99
    .line 100
    .line 101
    aput-object v2, v1, v4

    .line 102
    .line 103
    new-instance v2, Lcom/byazt/tv/tt$tt;

    .line 104
    .line 105
    invoke-direct {v2}, Lcom/byazt/tv/tt$tt;-><init>()V

    .line 106
    .line 107
    .line 108
    aput-object v2, v1, v0

    .line 109
    .line 110
    new-instance v0, Lcom/byazt/tv/tt$tt;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/byazt/tv/tt$tt;-><init>()V

    .line 113
    .line 114
    .line 115
    aput-object v0, v1, v5

    .line 116
    .line 117
    sput-object v1, Lcom/byazt/tv/tt;->ve:[Lcom/byazt/tv/tt$tt;

    .line 118
    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/byazt/lu/uj;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/tv/tt$c;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/byazt/lu/uj;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x1e

    .line 12
    .line 13
    const-string v4, "bd_embed_tea_agent.db"

    .line 14
    .line 15
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/byazt/tv/tt$c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/tv/tt;->n:Lcom/byazt/tv/tt$c;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/tv/tt;->uj:Lcom/byazt/lu/uj;

    .line 21
    .line 22
    return-void
.end method

.method private c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I
    .locals 15

    move-object/from16 v9, p6

    .line 117
    invoke-static {}, Lcom/byazt/tv/tt$tt;->c()V

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 118
    aput-object v12, v9, v0

    .line 119
    aput-wide v10, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    move v13, v0

    const/16 v14, 0xc8

    :cond_1
    :goto_1
    if-lez v14, :cond_2

    .line 120
    sget-object v0, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    array-length v0, v0

    if-ge v13, v0, :cond_2

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v14

    move v4, v13

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p5

    .line 121
    invoke-direct/range {v0 .. v8}, Lcom/byazt/tv/tt;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IIZ[Lorg/json/JSONArray;[JI)V

    .line 122
    aget-object v0, v9, v13

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v14, v0

    .line 123
    sget-object v1, Lcom/byazt/tv/tt;->ve:[Lcom/byazt/tv/tt$tt;

    aget-object v1, v1, v13

    iput v0, v1, Lcom/byazt/tv/tt$tt;->ve:I

    if-lez v14, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v13, 0x1

    .line 124
    :goto_2
    array-length v1, v9

    if-ge v0, v1, :cond_3

    .line 125
    aput-object v12, v9, v0

    .line 126
    aput-wide v10, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return v13
.end method

.method private c(JI)Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE pack SET _fail="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " WHERE _id="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/byazt/tv/c;Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/tv/c;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p1, "=\'"

    goto :goto_0

    :cond_0
    const-string p1, "!=\'"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND event_type=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' ORDER BY _id LIMIT "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p1, "=\'"

    goto :goto_0

    :cond_0
    const-string p1, "!=\'"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND event_type=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND _id<="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM page WHERE session_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "=\'"

    goto :goto_0

    :cond_0
    const-string v1, "!=\'"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ORDER BY "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, "session_id,"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "duration DESC LIMIT 500"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/byazt/tv/a;ZLcom/byazt/tv/da;Lcom/byazt/tv/i;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v5, p5

    .line 144
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v7, 0x3e8

    const/4 v11, 0x0

    .line 145
    :try_start_0
    iget-object v12, v2, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-direct {v1, v12, v3}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 146
    :try_start_1
    new-instance v13, Ljava/util/HashMap;

    const/16 v14, 0x8

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v14, 0x0

    move-object/from16 v17, v11

    move-object/from16 v18, v17

    const-wide/16 v15, 0x0

    .line 147
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 148
    invoke-virtual {v0, v12}, Lcom/byazt/tv/i;->c(Landroid/database/Cursor;)I

    .line 149
    sget-boolean v14, Lcom/byazt/yv/da;->tt:Z

    if-eqz v14, :cond_1

    .line 150
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v9, "queryPage, "

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    :cond_1
    iget-object v9, v0, Lcom/byazt/tv/i;->yp:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 152
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/tv/i;->da()Z

    move-result v10

    const/4 v14, 0x1

    if-nez v10, :cond_4

    .line 153
    iget-object v10, v0, Lcom/byazt/tv/i;->yp:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v14

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-wide v9, v0, Lcom/byazt/tv/i;->t:J

    cmp-long v20, v9, v7

    if-ltz v20, :cond_3

    add-long/2addr v15, v9

    goto :goto_2

    :cond_3
    add-long/2addr v15, v7

    .line 155
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/tv/c;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    iget-object v9, v0, Lcom/byazt/tv/i;->gt:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 157
    iget-object v9, v0, Lcom/byazt/tv/i;->gt:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :try_start_3
    iget-object v10, v0, Lcom/byazt/tv/c;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v9

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_6

    .line 159
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 160
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_5

    .line 161
    iget-object v10, v0, Lcom/byazt/tv/i;->yp:Ljava/lang/String;

    invoke-virtual {v13, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_5
    iget-object v9, v0, Lcom/byazt/tv/i;->yp:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 163
    :cond_6
    iput-wide v7, v0, Lcom/byazt/tv/i;->t:J

    add-long/2addr v15, v7

    .line 164
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/tv/c;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_7
    if-eqz v14, :cond_8

    .line 165
    iget-object v0, v2, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/byazt/tv/tt;->tt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v17, v11

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v12, v11

    move-object/from16 v17, v12

    :goto_3
    move-object/from16 v18, v17

    const-wide/16 v15, 0x0

    .line 166
    :goto_4
    :try_start_5
    invoke-static {v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v12, :cond_9

    .line 167
    :cond_8
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 v0, v17

    move-object/from16 v5, v18

    .line 168
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_d

    cmp-long v9, v15, v7

    if-lez v9, :cond_a

    move-wide v7, v15

    .line 169
    :cond_a
    iput-wide v7, v4, Lcom/byazt/tv/da;->t:J

    if-eqz v3, :cond_b

    .line 170
    iget-object v3, v2, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    iput-object v3, v4, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    .line 171
    iget-wide v9, v2, Lcom/byazt/tv/c;->tt:J

    add-long/2addr v9, v7

    invoke-virtual {v4, v9, v10}, Lcom/byazt/tv/c;->c(J)V

    goto :goto_6

    .line 172
    :cond_b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    const-wide/16 v7, 0x0

    .line 173
    invoke-virtual {v4, v7, v8}, Lcom/byazt/tv/c;->c(J)V

    .line 174
    :goto_6
    iget-wide v7, v2, Lcom/byazt/tv/c;->n:J

    iput-wide v7, v4, Lcom/byazt/tv/c;->n:J

    .line 175
    iget-object v3, v2, Lcom/byazt/tv/c;->a:Ljava/lang/String;

    iput-object v3, v4, Lcom/byazt/tv/c;->a:Ljava/lang/String;

    .line 176
    iget-object v3, v2, Lcom/byazt/tv/c;->sp:Ljava/lang/String;

    iput-object v3, v4, Lcom/byazt/tv/c;->sp:Ljava/lang/String;

    .line 177
    iget-object v3, v2, Lcom/byazt/tv/c;->x:Ljava/lang/String;

    iput-object v3, v4, Lcom/byazt/tv/c;->x:Ljava/lang/String;

    .line 178
    iget-wide v7, v4, Lcom/byazt/tv/c;->tt:J

    iput-wide v7, v4, Lcom/byazt/tv/da;->u:J

    .line 179
    invoke-static {}, Lcom/byazt/lu/sp;->uj()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/byazt/tv/c;->ve:J

    .line 180
    iput-object v11, v4, Lcom/byazt/tv/da;->yp:Ljava/lang/String;

    .line 181
    iget-object v3, v2, Lcom/byazt/tv/a;->z:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 182
    iget-object v0, v2, Lcom/byazt/tv/a;->z:Ljava/lang/String;

    iput-object v0, v4, Lcom/byazt/tv/da;->yp:Ljava/lang/String;

    goto :goto_7

    .line 183
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 184
    iput-object v0, v4, Lcom/byazt/tv/da;->yp:Ljava/lang/String;

    .line 185
    iput-object v5, v4, Lcom/byazt/tv/c;->a:Ljava/lang/String;

    :cond_d
    :goto_7
    return-object v6

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_e

    .line 186
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
.end method

.method private c(Lcom/byazt/tv/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 54
    iget-object v0, p1, Lcom/byazt/tv/a;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/tv/tt;->uj:Lcom/byazt/lu/uj;

    invoke-virtual {v1}, Lcom/byazt/lu/uj;->uj()Lcom/byazt/ds/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ds/i;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/byazt/tv/a;->t:I

    iget-object v1, p0, Lcom/byazt/tv/tt;->uj:Lcom/byazt/lu/uj;

    invoke-virtual {v1}, Lcom/byazt/lu/uj;->uj()Lcom/byazt/ds/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ds/i;->tt()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 55
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    invoke-static {v0, p2}, Lcom/byazt/yv/u;->ve(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    .line 57
    iget-object v2, p1, Lcom/byazt/tv/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version_code"

    .line 58
    iget p1, p1, Lcom/byazt/tv/a;->t:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IIZ[Lorg/json/JSONArray;[JI)V
    .locals 11

    .line 127
    sget-object v0, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    aget-object v0, v0, p4

    .line 128
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move/from16 v4, p5

    move v5, p3

    move/from16 v6, p8

    .line 129
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/c;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    .line 130
    invoke-virtual {p1, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 131
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_2

    .line 132
    invoke-virtual {v0, v1}, Lcom/byazt/tv/c;->c(Landroid/database/Cursor;)I

    .line 133
    sget-object v3, Lcom/byazt/tv/tt;->ve:[Lcom/byazt/tv/tt$tt;

    aget-object v3, v3, p4

    invoke-static {v3, v0}, Lcom/byazt/tv/tt$tt;->c(Lcom/byazt/tv/tt$tt;Lcom/byazt/tv/c;)V

    .line 134
    sget-boolean v3, Lcom/byazt/yv/da;->tt:Z

    if-eqz v3, :cond_0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryEvent, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/tv/c;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    iget-wide v3, v0, Lcom/byazt/tv/c;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, v3, v9

    if-lez v5, :cond_1

    move-wide v9, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 139
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_3

    .line 140
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_3
    :goto_2
    aput-object v7, p6, p4

    .line 142
    aput-wide v9, p7, p4

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_4

    .line 143
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private static c(Lcom/byazt/tv/c;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/byazt/tv/tt;->tt:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/byazt/tv/c;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lcom/byazt/tv/i;Lcom/byazt/tv/x;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V
    .locals 17

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packLostData, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yv/da;->c(Ljava/lang/String;)V

    .line 88
    iput-object v15, v6, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    const/4 v14, 0x0

    .line 89
    iput-boolean v14, v6, Lcom/byazt/tv/a;->gt:Z

    move-object/from16 v13, p5

    .line 90
    iput-object v15, v13, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/a;ZLcom/byazt/tv/da;Lcom/byazt/tv/i;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v13, p8

    const/4 v1, 0x0

    move-object/from16 v14, p9

    .line 92
    invoke-direct/range {v7 .. v14}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v2

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v14, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v6, Lcom/byazt/tv/a;->yp:Z

    move-object/from16 v3, p0

    move-object/from16 v4, p9

    .line 94
    invoke-direct {v3, v4}, Lcom/byazt/tv/tt;->c([J)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_2

    iget-boolean v5, v6, Lcom/byazt/tv/a;->yp:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v5, p8

    move v10, v2

    move-object v11, v3

    move-object v6, v4

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    goto/16 :goto_5

    .line 95
    :cond_2
    :goto_1
    iget-boolean v5, v6, Lcom/byazt/tv/a;->yp:Z

    if-nez v5, :cond_3

    move-object/from16 v6, p3

    goto :goto_2

    :cond_3
    move-object v6, v7

    :goto_2
    if-nez v5, :cond_4

    move-object/from16 v5, p6

    move-object/from16 v8, p8

    move v10, v2

    move-object v11, v3

    move-object v9, v4

    move-object/from16 v2, p5

    move-object v4, v0

    move-object/from16 v0, p1

    goto :goto_4

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v5, p8

    move v8, v2

    move-object v10, v3

    move-object v9, v6

    move-object/from16 v2, p5

    move-object v6, v4

    move-object/from16 v4, p6

    :goto_3
    move-object v11, v10

    move v10, v8

    move-object v8, v5

    move-object v5, v4

    move-object v4, v7

    move-object/from16 v16, v9

    move-object v9, v6

    move-object/from16 v6, v16

    :goto_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v0

    move-object/from16 p3, v12

    move-object/from16 p4, v6

    move-object/from16 p5, v4

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p8, v13

    invoke-virtual/range {p1 .. p8}, Lcom/byazt/tv/x;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    .line 96
    invoke-virtual {v11, v2, v1, v5, v14}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/x;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move-object v4, v5

    move-object v5, v8

    move-object v6, v9

    .line 97
    :cond_5
    :goto_5
    sget-object v8, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    array-length v8, v8

    if-ge v10, v8, :cond_6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p1, v11

    move/from16 p2, v10

    move-object/from16 p3, v4

    move-object/from16 p4, v15

    move/from16 p5, v8

    move/from16 p6, v9

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    .line 98
    invoke-direct/range {p1 .. p8}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v10

    .line 99
    invoke-direct {v11, v6}, Lcom/byazt/tv/tt;->c([J)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v9, v7

    move v8, v10

    move-object v10, v11

    goto :goto_3

    :cond_6
    return-void
.end method

.method private c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/x;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/byazt/tv/a;",
            "Lcom/byazt/tv/x;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Lorg/json/JSONArray;",
            "[J",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/x;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packCurrentData, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yv/da;->c(Ljava/lang/String;)V

    .line 61
    iget-object v0, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;)Z

    move-result v10

    const/4 v1, 0x0

    .line 62
    iget-object v3, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v0

    const/4 v1, 0x0

    move-object/from16 v2, p6

    if-nez v10, :cond_0

    .line 63
    invoke-direct {v8, v2}, Lcom/byazt/tv/tt;->c([J)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v10, :cond_1

    move-object v13, v9

    goto :goto_0

    :cond_1
    move-object v13, v1

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    .line 64
    invoke-virtual/range {v11 .. v18}, Lcom/byazt/tv/x;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    .line 65
    sget-object v3, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 66
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/tv/c;->sp()Lcom/byazt/tv/c;

    move-result-object v3

    check-cast v3, Lcom/byazt/tv/x;

    .line 67
    invoke-virtual {v3}, Lcom/byazt/tv/x;->da()[B

    move-object/from16 v4, p7

    .line 68
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move v12, v0

    move-object v5, v2

    move-object v7, v8

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move v6, v0

    move-object v5, v2

    move-object v7, v8

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    :goto_1
    const/4 v10, 0x1

    .line 69
    invoke-virtual {v7, v2, v10, v3, v10}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/x;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move v12, v6

    .line 70
    :cond_4
    :goto_2
    sget-object v6, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    array-length v6, v6

    if-ge v12, v6, :cond_6

    .line 71
    iget-object v14, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v11, v7

    move-object v13, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v12

    .line 72
    invoke-direct {v7, v5}, Lcom/byazt/tv/tt;->c([J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    iget-object v6, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-direct {v7, v6}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v15, v9

    goto :goto_3

    :cond_5
    move-object v15, v1

    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object v14, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 74
    invoke-virtual/range {v13 .. v20}, Lcom/byazt/tv/x;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    move v6, v12

    goto :goto_1

    :cond_6
    return-void
.end method

.method private c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/x;Lcom/byazt/tv/i;Lcom/byazt/tv/da;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packHistoryData, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yv/da;->c(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/a;ZLcom/byazt/tv/da;Lcom/byazt/tv/i;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v14

    .line 77
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v15, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v9, Lcom/byazt/tv/a;->yp:Z

    const/4 v1, 0x0

    .line 78
    iget-object v3, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v0

    .line 79
    iget-boolean v1, v9, Lcom/byazt/tv/a;->yp:Z

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-direct {v8, v1}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v18, v9

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move-object/from16 v18, v1

    :goto_1
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p1

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    invoke-virtual/range {v16 .. v23}, Lcom/byazt/tv/x;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    move-object/from16 v13, p5

    const/4 v7, 0x1

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    .line 81
    invoke-virtual/range {v10 .. v17}, Lcom/byazt/tv/x;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    :goto_2
    move-object/from16 v15, p3

    move-object/from16 v14, p6

    .line 82
    :goto_3
    invoke-virtual {v8, v15, v7, v14, v7}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/x;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move v1, v0

    .line 83
    :goto_4
    sget-object v0, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 84
    iget-object v3, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move-object/from16 v6, p7

    const/16 v18, 0x1

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    move-object/from16 v0, p8

    .line 85
    invoke-direct {v8, v0}, Lcom/byazt/tv/tt;->c([J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    move-object v14, v2

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    .line 86
    invoke-virtual/range {v10 .. v17}, Lcom/byazt/tv/x;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    move-object/from16 v15, p3

    move-object/from16 v14, p6

    move v0, v1

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v15, p3

    move-object/from16 v14, p6

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private c(Lorg/json/JSONObject;ZLcom/byazt/tv/x;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    .line 46
    sget-object v10, Lcom/byazt/tv/tt;->c:[I

    array-length v11, v10

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    aget v13, v10, v12

    const/4 v0, 0x3

    new-array v14, v0, [Lorg/json/JSONArray;

    new-array v15, v0, [J

    const/4 v1, 0x0

    .line 47
    iget-object v3, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move/from16 v4, p2

    move v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v0

    .line 48
    invoke-direct {v8, v15}, Lcom/byazt/tv/tt;->c([J)Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v16, v0

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object v5, v14

    move-object v6, v15

    move v7, v13

    .line 49
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/tv/x;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    const/4 v0, 0x1

    move/from16 v7, p2

    move-object/from16 v6, p4

    .line 50
    invoke-virtual {v8, v9, v7, v6, v0}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/x;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move/from16 v1, v16

    .line 51
    :goto_2
    sget-object v0, Lcom/byazt/tv/tt;->a:[Lcom/byazt/tv/c;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 52
    iget-object v3, v9, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move/from16 v4, p2

    move v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/byazt/tv/tt;->c(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    .line 53
    invoke-direct {v8, v15}, Lcom/byazt/tv/tt;->c([J)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v16, v1

    goto :goto_1

    :cond_0
    move/from16 v7, p2

    move-object/from16 v6, p4

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "needLaunch, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/tv/tt;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yv/da;->c(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/tv/tt;->sp:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/byazt/tv/tt;->sp:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c([J)Z
    .locals 7

    const/4 v0, 0x0

    .line 100
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    aget-wide v1, p1, v3

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    cmp-long p1, v1, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v3
.end method

.method private tt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DELETE FROM page WHERE session_id"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const-string p2, "=\'"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p2, "!=\'"

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "\'"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method


# virtual methods
.method public c()Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/x;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    sget-object v1, Lcom/byazt/tv/tt;->tt:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/tv/x;

    const/4 v2, 0x0

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/byazt/tv/tt;->n:Lcom/byazt/tv/tt$c;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM pack ORDER BY _id DESC LIMIT 8"

    .line 190
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/byazt/tv/c;->sp()Lcom/byazt/tv/c;

    move-result-object v1

    check-cast v1, Lcom/byazt/tv/x;

    .line 193
    invoke-virtual {v1, v3}, Lcom/byazt/tv/x;->c(Landroid/database/Cursor;)I

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v2

    .line 195
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    .line 196
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "queryPack, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_2

    .line 198
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public declared-synchronized c(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/x;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    monitor-enter p0

    .line 9
    :try_start_0
    sget-object v0, Lcom/byazt/tv/tt;->tt:Ljava/util/HashMap;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/byazt/tv/a;

    const-string v1, "terminate"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/byazt/tv/da;

    const-string v1, "page"

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/byazt/tv/i;

    const-string v1, "pack"

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/tv/x;

    .line 13
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_1
    new-array v15, v1, [Lorg/json/JSONArray;

    new-array v9, v1, [J

    .line 14
    iget-object v1, v11, Lcom/byazt/tv/tt;->n:Lcom/byazt/tv/tt$c;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 15
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "SELECT * FROM launch ORDER BY _id LIMIT 5"

    .line 16
    invoke-virtual {v8, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 17
    :try_start_3
    iget-object v1, v11, Lcom/byazt/tv/tt;->uj:Lcom/byazt/lu/uj;

    invoke-virtual {v1}, Lcom/byazt/lu/uj;->a()Lcom/byazt/lu/sp;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/byazt/lu/sp;->c()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v1}, Lcom/byazt/lu/sp;->tt()Z

    move-result v16

    const-wide/high16 v17, -0x8000000000000000L

    const-wide v19, 0x7fffffffffffffffL

    move-object/from16 v5, p1

    move-wide/from16 v23, v17

    move-wide/from16 v21, v19

    .line 20
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 21
    :try_start_4
    invoke-virtual {v10, v7}, Lcom/byazt/tv/a;->c(Landroid/database/Cursor;)I

    .line 22
    iget-object v1, v10, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    move-object/from16 v5, p1

    .line 23
    invoke-direct {v11, v10, v5}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    iget-object v1, v10, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_1

    if-nez v16, :cond_0

    const/4 v3, 0x1

    .line 25
    :cond_0
    :try_start_5
    iput-boolean v3, v10, Lcom/byazt/tv/a;->yp:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v1, p0

    move-object v3, v2

    move-object/from16 v25, v3

    move-object v3, v10

    move-object v4, v0

    move-object v5, v8

    move-object/from16 v26, v6

    move-object v6, v15

    move-object/from16 v27, v7

    move-object v7, v9

    move-object/from16 v28, v8

    move-object v8, v14

    .line 26
    :try_start_6
    invoke-direct/range {v1 .. v8}, Lcom/byazt/tv/tt;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/x;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/ArrayList;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v29, v9

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    :goto_1
    move-object/from16 v2, v27

    move-object/from16 v9, v28

    goto/16 :goto_8

    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 27
    :try_start_7
    iget-wide v1, v10, Lcom/byazt/tv/c;->c:J

    cmp-long v3, v1, v21

    if-gez v3, :cond_2

    move-wide/from16 v21, v1

    :cond_2
    cmp-long v3, v1, v23

    if-lez v3, :cond_3

    move-wide/from16 v23, v1

    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v10

    move-object v4, v0

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, v28

    move-object v8, v15

    move-object/from16 v29, v9

    .line 28
    invoke-direct/range {v1 .. v9}, Lcom/byazt/tv/tt;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/x;Lcom/byazt/tv/i;Lcom/byazt/tv/da;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_2
    move-object/from16 v1, v25

    move-object/from16 v9, v28

    const/4 v2, 0x1

    .line 29
    :try_start_8
    invoke-direct {v11, v1, v2, v0, v9}, Lcom/byazt/tv/tt;->c(Lorg/json/JSONObject;ZLcom/byazt/tv/x;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v5, v1

    move-object v8, v9

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v9, v29

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v9, v28

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v27, v7

    move-object v9, v8

    goto/16 :goto_7

    :cond_4
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v9

    const/4 v2, 0x1

    move-object v9, v8

    cmp-long v1, v21, v19

    if-eqz v1, :cond_5

    cmp-long v1, v23, v17

    if-eqz v1, :cond_5

    const-string v1, "DELETE FROM launch WHERE _id>=? AND _id<=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 30
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v9, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_7

    .line 31
    :cond_5
    :goto_3
    :try_start_9
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_6

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-nez v1, :cond_6

    move-object/from16 v1, p0

    move-object v2, v5

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v12

    move-object v12, v5

    move-object v5, v13

    move-object v6, v0

    move-object v7, v9

    const/4 v13, 0x0

    move-object/from16 v8, v26

    move-object v10, v9

    move-object v9, v15

    move-object v15, v10

    move-object/from16 v10, v29

    .line 32
    :try_start_a
    invoke-direct/range {v1 .. v10}, Lcom/byazt/tv/tt;->c(Lorg/json/JSONObject;Lcom/byazt/tv/a;Lcom/byazt/tv/da;Lcom/byazt/tv/i;Lcom/byazt/tv/x;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V

    .line 33
    invoke-direct {v11, v12, v13, v0, v15}, Lcom/byazt/tv/tt;->c(Lorg/json/JSONObject;ZLcom/byazt/tv/x;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4

    :cond_6
    move-object v15, v9

    .line 34
    :goto_4
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 35
    :try_start_b
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 36
    :try_start_c
    invoke-static {v1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 37
    :goto_5
    invoke-static {v15}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v15, v9

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object/from16 v27, v7

    move-object v15, v8

    :goto_6
    move-object v9, v15

    :goto_7
    move-object/from16 v2, v27

    goto :goto_8

    :catchall_9
    move-exception v0

    move-object v15, v8

    move-object v9, v15

    goto :goto_8

    :catchall_a
    move-exception v0

    move-object v9, v2

    .line 38
    :goto_8
    :try_start_d
    invoke-static {v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    if-eqz v2, :cond_7

    .line 39
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    goto :goto_9

    :catchall_b
    move-exception v0

    move-object v1, v0

    .line 40
    :try_start_f
    invoke-static {v1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 41
    :cond_7
    :goto_9
    invoke-static {v9}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 42
    :goto_a
    monitor-exit p0

    return-object v14

    :catchall_c
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_8

    .line 43
    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    goto :goto_b

    :catchall_d
    move-exception v0

    move-object v2, v0

    .line 44
    :try_start_11
    invoke-static {v2}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 45
    :cond_8
    :goto_b
    invoke-static {v9}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/byazt/tv/x;ZLandroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 10

    if-nez p3, :cond_0

    .line 101
    iget-object p3, p0, Lcom/byazt/tv/tt;->n:Lcom/byazt/tv/tt$c;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 102
    :try_start_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_1
    const-wide/16 v1, 0x0

    if-eqz p4, :cond_4

    const-string p4, "pack"

    const/4 v3, 0x0

    .line 103
    invoke-virtual {p1, v3}, Lcom/byazt/tv/c;->tt(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p3, p4, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long p4, v4, v1

    if-gez p4, :cond_4

    .line 104
    iget-object p1, p1, Lcom/byazt/tv/x;->my:Lcom/byazt/tv/a;

    if-eqz p1, :cond_2

    .line 105
    invoke-direct {p0, v3}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 106
    invoke-static {p3}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return-void

    .line 107
    :cond_4
    :try_start_1
    iget-wide v8, p1, Lcom/byazt/tv/x;->m:J

    cmp-long p4, v8, v1

    if-lez p4, :cond_5

    const-string v4, "event"

    .line 108
    iget v5, p1, Lcom/byazt/tv/c;->da:I

    iget-object v6, p1, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    move-object v3, p0

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    :cond_5
    iget-wide v8, p1, Lcom/byazt/tv/x;->rh:J

    cmp-long p4, v8, v1

    if-lez p4, :cond_6

    const-string v4, "eventv3"

    .line 110
    iget v5, p1, Lcom/byazt/tv/c;->da:I

    iget-object v6, p1, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    move-object v3, p0

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    :cond_6
    iget-wide v6, p1, Lcom/byazt/tv/x;->rl:J

    cmp-long p4, v6, v1

    if-lez p4, :cond_7

    const-string v2, "event_misc"

    .line 112
    iget v3, p1, Lcom/byazt/tv/c;->da:I

    iget-object v4, p1, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 113
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    if-eqz v0, :cond_9

    .line 114
    invoke-static {p3}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    .line 115
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_9

    .line 116
    invoke-static {p3}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_9
    return-void

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_a

    invoke-static {p3}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_a
    throw p1
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 8
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/c;",
            ">;)V"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/byazt/tv/tt;->n:Lcom/byazt/tv/tt$c;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 203
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/tv/c;

    .line 204
    invoke-virtual {v5}, Lcom/byazt/tv/c;->uj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4}, Lcom/byazt/tv/c;->tt(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v6, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/byazt/tv/c;->c:J

    const-string v6, "event"

    .line 205
    invoke-virtual {v5}, Lcom/byazt/tv/c;->uj()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, "eventv3"

    .line 207
    invoke-virtual {v5}, Lcom/byazt/tv/c;->uj()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_2
    instance-of v6, v5, Lcom/byazt/tv/a;

    if-eqz v6, :cond_0

    .line 210
    check-cast v5, Lcom/byazt/tv/a;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-static {v3}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 213
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 214
    invoke-static {v1}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_2
    move-exception p1

    invoke-static {v1}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public setResult(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/x;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/x;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setResult, "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/byazt/tv/x;

    .line 42
    .line 43
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iget-wide v5, v2, Lcom/byazt/tv/c;->tt:J

    .line 54
    .line 55
    sub-long/2addr v3, v5

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    const-wide/32 v5, 0x337f9800

    .line 61
    .line 62
    .line 63
    cmp-long v7, v3, v5

    .line 64
    .line 65
    if-lez v7, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tv/tt;->n:Lcom/byazt/tv/tt$c;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/byazt/tv/x;

    .line 99
    .line 100
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const/4 v5, 0x0

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    invoke-virtual {p0, v3, v2, v0, v5}, Lcom/byazt/tv/tt;->c(Lcom/byazt/tv/x;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const-string v4, "DELETE FROM pack WHERE _id=?"

    .line 112
    .line 113
    new-array v6, v2, [Ljava/lang/String;

    .line 114
    .line 115
    iget-wide v7, v3, Lcom/byazt/tv/c;->c:J

    .line 116
    .line 117
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    aput-object v3, v6, v5

    .line 122
    .line 123
    invoke-virtual {v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception p1

    .line 128
    :try_start_3
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_6

    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Lcom/byazt/tv/x;

    .line 146
    .line 147
    iget-object v3, p2, Lcom/byazt/tv/x;->my:Lcom/byazt/tv/a;

    .line 148
    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    invoke-direct {p0, v1}, Lcom/byazt/tv/tt;->c(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_4

    .line 159
    .line 160
    iget-wide v3, p2, Lcom/byazt/tv/c;->c:J

    .line 161
    .line 162
    iget v5, p2, Lcom/byazt/tv/x;->u:I

    .line 163
    .line 164
    add-int/2addr v5, v2

    .line 165
    iput v5, p2, Lcom/byazt/tv/x;->u:I

    .line 166
    .line 167
    invoke-direct {p0, v3, v4, v5}, Lcom/byazt/tv/tt;->c(JI)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :catchall_1
    move-exception p1

    .line 183
    move-object v1, v0

    .line 184
    goto :goto_3

    .line 185
    :catchall_2
    move-exception p1

    .line 186
    :goto_3
    :try_start_4
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 187
    .line 188
    .line 189
    invoke-static {v1}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :catchall_3
    move-exception p1

    .line 194
    invoke-static {v1}, Lcom/byazt/yv/u;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    .line 196
    .line 197
    throw p1
.end method
