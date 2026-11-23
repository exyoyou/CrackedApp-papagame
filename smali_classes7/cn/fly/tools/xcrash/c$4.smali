.class Lcn/fly/tools/xcrash/c$4;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/xcrash/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcn/fly/commons/v;->j:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/v;->a(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcn/fly/tools/xcrash/c$4$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcn/fly/tools/xcrash/c$4$1;-><init>(Lcn/fly/tools/xcrash/c$4;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    return-void
.end method
