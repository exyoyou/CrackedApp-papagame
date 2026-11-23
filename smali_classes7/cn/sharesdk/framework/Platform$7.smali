.class Lcn/sharesdk/framework/Platform$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/ShareSDKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/sharesdk/framework/ShareSDKCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/framework/Platform;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/Platform$7;->b:Lcn/sharesdk/framework/Platform;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/framework/Platform$7;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$7;->b:Lcn/sharesdk/framework/Platform;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput-boolean p1, v0, Lcn/sharesdk/framework/Platform;->isClientValid:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcn/sharesdk/framework/Platform$7;->b:Lcn/sharesdk/framework/Platform;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "Wechat"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcn/sharesdk/framework/Platform$7;->b:Lcn/sharesdk/framework/Platform;

    .line 24
    .line 25
    iget-boolean v0, p1, Lcn/sharesdk/framework/Platform;->needAuthCode:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, ""

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/PlatformDb;->putAuthCode(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/framework/Platform$7;->b:Lcn/sharesdk/framework/Platform;

    .line 39
    .line 40
    invoke-static {p1}, Lcn/sharesdk/framework/Platform;->b(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/g;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcn/sharesdk/framework/Platform$7;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/g;->c(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/Platform$7;->a(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
