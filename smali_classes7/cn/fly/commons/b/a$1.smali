.class Lcn/fly/commons/b/a$1;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/b/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/b/a;


# direct methods
.method constructor <init>(Lcn/fly/commons/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/b/a$1;->a:Lcn/fly/commons/b/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/commons/b/a$1;->a:Lcn/fly/commons/b/a;

    .line 2
    .line 3
    const-string v1, "=====>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcn/fly/commons/b/a;->a(Lcn/fly/commons/b/a;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcn/fly/commons/b/a$1;->a:Lcn/fly/commons/b/a;

    .line 9
    .line 10
    invoke-static {v0}, Lcn/fly/commons/b/a;->a(Lcn/fly/commons/b/a;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    iget-object v1, p0, Lcn/fly/commons/b/a$1;->a:Lcn/fly/commons/b/a;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcn/fly/commons/b/a;->a(Lcn/fly/commons/b/a;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcn/fly/commons/b/a$1;->a:Lcn/fly/commons/b/a;

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "ign: "

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Lcn/fly/commons/b/a;->a(Lcn/fly/commons/b/a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    iget-object v1, p0, Lcn/fly/commons/b/a$1;->a:Lcn/fly/commons/b/a;

    .line 91
    .line 92
    invoke-static {v1, v0}, Lcn/fly/commons/b/a;->a(Lcn/fly/commons/b/a;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcn/fly/commons/b/a$1;->a:Lcn/fly/commons/b/a;

    .line 96
    .line 97
    const-string v1, "<====="

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcn/fly/commons/b/a;->a(Lcn/fly/commons/b/a;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
