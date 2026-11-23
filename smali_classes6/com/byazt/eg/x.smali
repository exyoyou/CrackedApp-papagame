.class public final Lcom/byazt/eg/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x47
    }
.end annotation


# static fields
.field public static final a:Lcom/byazt/eg/x;

.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final da:Lcom/byazt/eg/x;

.field public static final i:Lcom/byazt/eg/x;

.field public static final m:Lcom/byazt/eg/x;

.field public static final n:Lcom/byazt/eg/x;

.field public static final rh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/eg/x;",
            ">;"
        }
    .end annotation
.end field

.field public static final sl:Lcom/byazt/eg/x;

.field public static final sp:Lcom/byazt/eg/x;

.field public static final t:Lcom/byazt/eg/x;

.field public static final tt:Lcom/byazt/eg/x;

.field public static final u:Lcom/byazt/eg/x;

.field public static final uj:Lcom/byazt/eg/x;

.field public static final ve:Lcom/byazt/eg/x;

.field public static final x:Lcom/byazt/eg/x;

.field public static final yp:Lcom/byazt/eg/x;

.field public static final z:Lcom/byazt/eg/x;


# instance fields
.field public final nu:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/eg/x$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/eg/x$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/eg/x;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    new-instance v1, Ljava/util/TreeMap;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/byazt/eg/x;->rh:Ljava/util/Map;

    .line 14
    .line 15
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/byazt/eg/x;->tt:Lcom/byazt/eg/x;

    .line 24
    .line 25
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    .line 26
    .line 27
    const/16 v1, 0x2f

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/byazt/eg/x;->ve:Lcom/byazt/eg/x;

    .line 34
    .line 35
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 36
    .line 37
    const/16 v1, 0x35

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/byazt/eg/x;->uj:Lcom/byazt/eg/x;

    .line 44
    .line 45
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    .line 46
    .line 47
    const/16 v1, 0x9c

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/byazt/eg/x;->n:Lcom/byazt/eg/x;

    .line 54
    .line 55
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    .line 56
    .line 57
    const/16 v1, 0x9d

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/byazt/eg/x;->a:Lcom/byazt/eg/x;

    .line 64
    .line 65
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    .line 66
    .line 67
    const v1, 0xc009

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lcom/byazt/eg/x;->sp:Lcom/byazt/eg/x;

    .line 75
    .line 76
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    .line 77
    .line 78
    const v1, 0xc00a

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/byazt/eg/x;->x:Lcom/byazt/eg/x;

    .line 86
    .line 87
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 88
    .line 89
    const v1, 0xc013

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/byazt/eg/x;->i:Lcom/byazt/eg/x;

    .line 97
    .line 98
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    .line 99
    .line 100
    const v1, 0xc014

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/byazt/eg/x;->da:Lcom/byazt/eg/x;

    .line 108
    .line 109
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 110
    .line 111
    const v1, 0xc02b

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/byazt/eg/x;->sl:Lcom/byazt/eg/x;

    .line 119
    .line 120
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 121
    .line 122
    const v1, 0xc02c

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sput-object v0, Lcom/byazt/eg/x;->t:Lcom/byazt/eg/x;

    .line 130
    .line 131
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 132
    .line 133
    const v1, 0xc02f

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lcom/byazt/eg/x;->u:Lcom/byazt/eg/x;

    .line 141
    .line 142
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 143
    .line 144
    const v1, 0xc030

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Lcom/byazt/eg/x;->yp:Lcom/byazt/eg/x;

    .line 152
    .line 153
    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    .line 154
    .line 155
    const v1, 0xcca8

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Lcom/byazt/eg/x;->z:Lcom/byazt/eg/x;

    .line 163
    .line 164
    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    .line 165
    .line 166
    const v1, 0xcca9

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v1}, Lcom/byazt/eg/x;->c(Ljava/lang/String;I)Lcom/byazt/eg/x;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sput-object v0, Lcom/byazt/eg/x;->m:Lcom/byazt/eg/x;

    .line 174
    .line 175
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/eg/x;->nu:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static declared-synchronized c(Ljava/lang/String;)Lcom/byazt/eg/x;
    .locals 3

    const-class v0, Lcom/byazt/eg/x;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/byazt/eg/x;->rh:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/eg/x;

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Lcom/byazt/eg/x;

    invoke-direct {v2, p0}, Lcom/byazt/eg/x;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Ljava/lang/String;I)Lcom/byazt/eg/x;
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/byazt/eg/x;->c(Ljava/lang/String;)Lcom/byazt/eg/x;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/eg/x;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 7
    invoke-static {v3}, Lcom/byazt/eg/x;->c(Ljava/lang/String;)Lcom/byazt/eg/x;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/eg/x;->nu:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/x;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
