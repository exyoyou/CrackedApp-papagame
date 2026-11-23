.class Lcom/join/mgps/customview/MyUserIconTitleLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/MyUserIconTitleLayout;->setUserIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/MyUserIconTitleLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyUserIconTitleLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;->b:Lcom/join/mgps/customview/MyUserIconTitleLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;->b:Lcom/join/mgps/customview/MyUserIconTitleLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/MyUserIconTitleLayout;->a(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;->b:Lcom/join/mgps/customview/MyUserIconTitleLayout;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/customview/MyUserIconTitleLayout;->b(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f081323

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;->b:Lcom/join/mgps/customview/MyUserIconTitleLayout;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/customview/MyUserIconTitleLayout;->c(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;->b:Lcom/join/mgps/customview/MyUserIconTitleLayout;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/join/mgps/customview/MyUserIconTitleLayout;->b(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/join/mgps/Util/b;->vl(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/MyUserIconTitleLayout$a;->b:Lcom/join/mgps/customview/MyUserIconTitleLayout;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/join/mgps/customview/MyUserIconTitleLayout;->d(Lcom/join/mgps/customview/MyUserIconTitleLayout;)Lcom/join/mgps/customview/VipView;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {v2, v1, v0}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method
