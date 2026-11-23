.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->a:[Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FileLocker;)Z
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 3
    .line 4
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 28
    .line 29
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 30
    .line 31
    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 43
    .line 44
    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 56
    .line 57
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/LinkedList;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 62
    .line 63
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 75
    .line 76
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 84
    .line 85
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/LinkedList;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-long v0, v0

    .line 94
    const-wide/16 v3, 0x29

    .line 95
    .line 96
    mul-long v0, v0, v3

    .line 97
    .line 98
    const-wide/16 v3, 0x400

    .line 99
    .line 100
    add-long/2addr v0, v3

    .line 101
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 102
    .line 103
    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->a:[Z

    .line 111
    .line 112
    aput-boolean v2, v0, p1

    .line 113
    .line 114
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 115
    .line 116
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "Clear done, new size: "

    .line 120
    .line 121
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 122
    .line 123
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;->b:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 133
    .line 134
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    return p1
.end method
