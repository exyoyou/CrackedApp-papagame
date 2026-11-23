.class public final synthetic Lcom/join/mgps/mod/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/mod/activity/d;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/d;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->e(Lcom/join/mgps/mod/activity/ModLoadingActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
