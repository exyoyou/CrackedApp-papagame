.class public final synthetic Lcom/papa91/activity/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;


# instance fields
.field public final synthetic a:Lcom/papa91/activity/EmuMenuBaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/activity/x;->a:Lcom/papa91/activity/EmuMenuBaseActivity;

    return-void
.end method


# virtual methods
.method public final onNoTipClick(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/x;->a:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-static {v0, p1, p2}, Lcom/papa91/activity/EmuMenuBaseActivity;->w(Lcom/papa91/activity/EmuMenuBaseActivity;II)V

    return-void
.end method
