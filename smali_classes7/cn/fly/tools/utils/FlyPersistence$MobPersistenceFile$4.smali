.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/utils/FlyPersistence$g;

.field final synthetic b:[I

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:[J

.field final synthetic e:[[B

.field final synthetic f:[Ljava/lang/Throwable;

.field final synthetic g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$g;[I[Ljava/lang/Object;[J[[B[Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->a:Lcn/fly/tools/utils/FlyPersistence$g;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 6
    .line 7
    iput-object p4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->c:[Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->d:[J

    .line 10
    .line 11
    iput-object p6, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->e:[[B

    .line 12
    .line 13
    iput-object p7, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->f:[Ljava/lang/Throwable;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FileLocker;)Z
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 3
    .line 4
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 12
    .line 13
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->i(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Lcn/fly/tools/utils/FlyPersistence$h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->a:Lcn/fly/tools/utils/FlyPersistence$g;

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$h;Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$c;->a(Lcn/fly/tools/utils/FlyPersistence$c;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$c;->b(Lcn/fly/tools/utils/FlyPersistence$c;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 38
    .line 39
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->a:Lcn/fly/tools/utils/FlyPersistence$g;

    .line 40
    .line 41
    invoke-virtual {v0, v2, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;Z)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 45
    .line 46
    aput v1, v0, p1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    aput v3, v2, p1

    .line 53
    .line 54
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->c:[Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$c;->a(Lcn/fly/tools/utils/FlyPersistence$c;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    aput-object v0, v2, p1

    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 63
    .line 64
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->a:Lcn/fly/tools/utils/FlyPersistence$g;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 85
    .line 86
    invoke-static {v2, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 90
    .line 91
    aput v1, v0, p1
    :try_end_0
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->d:[J

    .line 95
    .line 96
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->h(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    aput-wide v2, v1, p1

    .line 101
    .line 102
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->e:[[B

    .line 103
    .line 104
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 105
    .line 106
    invoke-static {v2, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    aput-object v0, v1, p1

    .line 111
    .line 112
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 113
    .line 114
    const/4 v1, 0x3

    .line 115
    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    :try_start_2
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->f:[Ljava/lang/Throwable;

    .line 120
    .line 121
    aput-object v0, v1, p1

    .line 122
    .line 123
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 124
    .line 125
    const/4 v1, 0x5

    .line 126
    aput v1, v0, p1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    aput v1, v0, p1
    :try_end_2
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->g:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 137
    .line 138
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->f:[Ljava/lang/Throwable;

    .line 148
    .line 149
    aput-object v0, v1, p1

    .line 150
    .line 151
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;->b:[I

    .line 152
    .line 153
    const/4 v1, 0x6

    .line 154
    aput v1, v0, p1

    .line 155
    .line 156
    :goto_1
    return p1
.end method
