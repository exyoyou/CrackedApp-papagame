.class public final Lcn/fly/commons/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/Boolean;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Z

.field private static e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/commons/f;->e:Ljava/util/HashSet;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcn/fly/tools/b/c;->a(Landroid/content/Context;)Lcn/fly/tools/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcn/fly/tools/b/c;->d()Lcn/fly/tools/b/a;

    move-result-object p0

    invoke-interface {p0}, Lcn/fly/tools/b/a;->ap()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/fly/commons/FlyProduct;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {p0}, Lcn/fly/commons/f;->b(Lcn/fly/commons/FlyProduct;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    sget-object v0, Lcn/fly/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/commons/c;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/fly/commons/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/fly/commons/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/fly/commons/a;->a()Lcn/fly/commons/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/commons/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/fly/commons/f;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sput-object v0, Lcn/fly/commons/f;->a:Ljava/lang/String;

    .line 6
    :cond_1
    sget-object v0, Lcn/fly/commons/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Lcn/fly/commons/FlyProduct;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/commons/FlyProduct;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/fly/commons/f;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    invoke-static {p0}, Lcn/fly/commons/ad;->a(Lcn/fly/commons/FlyProduct;)V

    .line 8
    sget-object v3, Lcn/fly/commons/f;->e:Ljava/util/HashSet;

    invoke-interface {p0}, Lcn/fly/commons/FlyProduct;->getProductTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 9
    sget-object v4, Lcn/fly/commons/f;->e:Ljava/util/HashSet;

    invoke-interface {p0}, Lcn/fly/commons/FlyProduct;->getProductTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 10
    :cond_1
    :goto_0
    sget-object v4, Lcn/fly/commons/f;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-static {}, Lcn/fly/commons/a;->a()Lcn/fly/commons/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/fly/commons/a;->e()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/fly/commons/f;->a:Ljava/lang/String;

    const/4 v3, 0x1

    .line 12
    :cond_2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aut pro: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", ndReg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", hsReged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcn/fly/commons/f;->d:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v3, :cond_3

    .line 13
    sget-boolean v1, Lcn/fly/commons/f;->d:Z

    if-nez v1, :cond_4

    .line 14
    :cond_3
    invoke-static {}, Lcn/fly/commons/a;->a()Lcn/fly/commons/a;

    move-result-object v1

    new-instance v3, Lcn/fly/commons/f$1;

    invoke-direct {v3}, Lcn/fly/commons/f$1;-><init>()V

    invoke-virtual {v1, p0, v3}, Lcn/fly/commons/a;->a(Lcn/fly/commons/FlyProduct;Lcn/fly/tools/utils/d;)V

    .line 15
    sput-boolean v2, Lcn/fly/commons/f;->d:Z

    .line 16
    :cond_4
    sget-object p0, Lcn/fly/commons/f;->b:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    .line 17
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object p0

    const-string v1, "key_curr_passed_duid"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/fly/commons/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    sput-object p0, Lcn/fly/commons/f;->c:Ljava/lang/String;

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcn/fly/commons/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 20
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcn/fly/commons/f;->b:Ljava/lang/Boolean;

    goto :goto_1

    .line 21
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcn/fly/commons/f;->b:Ljava/lang/Boolean;

    .line 22
    :goto_1
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object p0

    const-string v1, "key_curr_passed_duid"

    sget-object v2, Lcn/fly/commons/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcn/fly/commons/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_6
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 24
    sget-object v1, Lcn/fly/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    sget-object v2, Lcn/fly/commons/f;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isModified"

    .line 25
    sget-object v2, Lcn/fly/commons/f;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duidPrevious"

    .line 26
    sget-object v2, Lcn/fly/commons/f;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/commons/a;->a()Lcn/fly/commons/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/fly/commons/a;->f()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static d()Lcn/fly/commons/a$c;
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/commons/a;->a()Lcn/fly/commons/a;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcn/fly/commons/a;->b()Lcn/fly/commons/a$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
