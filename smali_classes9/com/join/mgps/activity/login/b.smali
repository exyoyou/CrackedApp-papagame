.class public final synthetic Lcom/join/mgps/activity/login/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/login/LoginMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/login/b;->b:Lcom/join/mgps/activity/login/LoginMainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/b;->b:Lcom/join/mgps/activity/login/LoginMainActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->i(Lcom/join/mgps/activity/login/LoginMainActivity;)V

    return-void
.end method
