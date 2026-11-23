.class public Lcom/byazt/z/uj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/c/yv;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x69
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/uj;->c(Lcom/byazt/s/a;)Lcom/byazt/c/yv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/s/a;

.field public final synthetic tt:Lcom/byazt/z/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/z/uj;Lcom/byazt/s/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/uj$6;->tt:Lcom/byazt/z/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/z/uj$6;->c:Lcom/byazt/s/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/z/uj$6;->c:Lcom/byazt/s/a;

    invoke-interface {v0}, Lcom/byazt/s/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    return-void

    .line 2
    :pswitch_1
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getPackageName()Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    :pswitch_2
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getDownloadTime()J

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Z)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/z/uj$6;->c:Lcom/byazt/s/a;

    invoke-interface {v0, p1}, Lcom/byazt/s/a;->c(Z)Z

    move-result p1

    return p1
.end method
