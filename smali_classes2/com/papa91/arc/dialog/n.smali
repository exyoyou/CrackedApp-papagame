.class public final synthetic Lcom/papa91/arc/dialog/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/papa91/arc/dialog/SettingAchievementDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/n;->b:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/n;->b:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    invoke-static {v0, p1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->c(Lcom/papa91/arc/dialog/SettingAchievementDialog;Landroid/view/View;)V

    return-void
.end method
