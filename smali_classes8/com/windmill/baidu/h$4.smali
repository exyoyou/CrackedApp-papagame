.class final Lcom/windmill/baidu/h$4;
.super Lcom/windmill/sdk/natives/WMImage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/h;->a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/baidu/h;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/h$4;->b:Lcom/windmill/baidu/h;

    iput-object p2, p0, Lcom/windmill/baidu/h$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMImage;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/h$4;->b:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->c(Lcom/windmill/baidu/h;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicHeight()I

    move-result v0

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/h$4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/h$4;->b:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->c(Lcom/windmill/baidu/h;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicWidth()I

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
