.class public final synthetic Lcom/papa91/activity/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/activity/r;->b:Lcom/papa91/activity/EmuBaseActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/r;->b:Lcom/papa91/activity/EmuBaseActivity;

    invoke-static {v0, p1}, Lcom/papa91/activity/EmuBaseActivity;->q(Lcom/papa91/activity/EmuBaseActivity;Landroid/view/View;)V

    return-void
.end method
