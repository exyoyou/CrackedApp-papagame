.class public Lcom/byazt/ogz/x$2;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x3b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ogz/x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ogz/x;


# direct methods
.method public constructor <init>(Lcom/byazt/ogz/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 4

    if-eqz p2, :cond_7

    .line 1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    :try_start_0
    const-string p1, "settings"

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, p1, v0}, Lcom/byazt/by/a;->c(Lcom/byazt/hm/tt;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    :try_start_1
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    invoke-static {p2, p1}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;Lorg/json/JSONObject;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "SdkSettingsHelper"

    const-string v0, "can not update settings"

    .line 5
    invoke-static {p2, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    nop

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    invoke-static {p2}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;)Lcom/byazt/ogz/n;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/ogz/n;->c(Lorg/json/JSONObject;)V

    .line 7
    invoke-static {}, Lcom/byazt/ogz/da;->ve()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    invoke-static {}, Lcom/byazt/ogz/da;->a()Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-static {}, Lcom/byazt/ogz/da;->uj()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    :cond_2
    invoke-static {}, Lcom/byazt/qya/ve;->c()Lcom/byazt/qya/ve;

    .line 11
    :cond_3
    sget-boolean p2, Lcom/byazt/omf/p;->sp:Z

    if-eqz p2, :cond_4

    .line 12
    iget-object p2, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    invoke-static {p2}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;)Lcom/byazt/ogz/n;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/ogz/n;->tt(Lorg/json/JSONObject;)V

    .line 13
    :cond_4
    new-instance p2, Lcom/byazt/xo/tt;

    const/16 v0, 0x40

    invoke-direct {p2, v0}, Lcom/byazt/xo/tt;-><init>(I)V

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/byazt/xo/tt;->c(I)Lcom/byazt/xo/tt;

    move-result-object p2

    new-instance v0, Lcom/byazt/ogz/x$2$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ogz/x$2$1;-><init>(Lcom/byazt/ogz/x$2;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    const/4 p2, 0x1

    .line 14
    :try_start_3
    iget-object v0, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    invoke-static {v0}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;)Lcom/byazt/ogz/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ogz/n;->ve(Lorg/json/JSONObject;)V

    .line 15
    invoke-static {}, Lcom/byazt/omf/rh;->c()V

    .line 16
    invoke-static {}, Lcom/byazt/ogz/x;->x()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-static {p2}, Lcom/byazt/ogz/x;->tt(Z)Z

    .line 18
    :cond_5
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->zm()Lcom/byazt/eli/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eli/c;->n()V

    .line 19
    invoke-static {}, Lcom/byazt/jv/c;->tt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 20
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    invoke-static {v2, v0}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "setting_saveData_failed"

    invoke-virtual {v1, v3, v2, v0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    .line 21
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ukr/yp;->tt()V

    .line 22
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-static {}, Lcom/byazt/ogz/x;->ve()V

    .line 24
    :cond_6
    invoke-static {p1, p2}, Lcom/byazt/tb/ve;->tt(Lorg/json/JSONObject;I)V

    return-void

    :catchall_2
    move-exception p1

    .line 25
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p2

    const-string v0, "setting_decrypt"

    invoke-virtual {p2, v0, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 26
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p2

    const-string v0, "setting_parse"

    invoke-virtual {p2, v0, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 27
    :cond_7
    :try_start_4
    iget-object p1, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    invoke-static {p1}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;)Lcom/byazt/ogz/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/ogz/n;->c()V

    .line 28
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 29
    :catchall_4
    invoke-static {}, Lcom/byazt/omf/rh;->tt()V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 2

    .line 30
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    invoke-static {}, Lcom/byazt/zj/ve;->c()Lcom/byazt/zj/ve;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3ef

    invoke-virtual {p2, v0, v1}, Lcom/byazt/zj/ve;->c(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/byazt/ogz/x$2;->c:Lcom/byazt/ogz/x;

    invoke-static {p1}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;)Lcom/byazt/ogz/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/ogz/n;->c()V

    .line 34
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :catchall_1
    invoke-static {}, Lcom/byazt/omf/rh;->tt()V

    return-void
.end method
