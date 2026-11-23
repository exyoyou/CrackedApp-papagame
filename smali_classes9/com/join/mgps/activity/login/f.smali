.class public final synthetic Lcom/join/mgps/activity/login/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/login/LoginSplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/login/f;->a:Lcom/join/mgps/activity/login/LoginSplashActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/f;->a:Lcom/join/mgps/activity/login/LoginSplashActivity;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->i(Lcom/join/mgps/activity/login/LoginSplashActivity;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
