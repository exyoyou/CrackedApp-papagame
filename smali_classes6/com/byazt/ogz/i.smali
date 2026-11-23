.class public Lcom/byazt/ogz/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x2a
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static tt:Lcom/byazt/omf/ve;

.field public static ve:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sync_switch"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const-string v2, "status"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/byazt/ogz/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    return-void
.end method

.method public static c(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sync_switch"

    const/4 v4, 0x0

    .line 3
    invoke-static {v2, v3, v4}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "status"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    sget-object v2, Lcom/byazt/ogz/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 6
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-ne v3, v0, :cond_1

    if-ne p0, v1, :cond_1

    .line 7
    sget-object p0, Lcom/byazt/ogz/i;->tt:Lcom/byazt/omf/ve;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/byazt/omf/ve;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    :try_start_0
    new-instance p0, Lcom/byazt/fb/ve;

    sget-object v0, Lcom/byazt/ogz/i;->ve:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xf

    invoke-interface {v0, v2, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/fb/ve;-><init>(Ljava/util/function/Function;)V

    .line 10
    sget-object v0, Lcom/byazt/ogz/i;->tt:Lcom/byazt/omf/ve;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/byazt/ogz/i;->ve:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    invoke-virtual {v0, v1, v2, p0}, Lcom/byazt/omf/ve;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/fb/ve;)V

    const/4 p0, 0x0

    .line 11
    sput-object p0, Lcom/byazt/ogz/i;->tt:Lcom/byazt/omf/ve;

    .line 12
    sput-object p0, Lcom/byazt/ogz/i;->ve:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "SdkSwitch"

    const-string v1, "init sdk error"

    .line 13
    invoke-static {v0, v1, p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ogz/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
