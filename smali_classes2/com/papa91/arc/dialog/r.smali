.class public final synthetic Lcom/papa91/arc/dialog/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/papa91/arc/dialog/SettingAchievementDialog;

.field public final synthetic c:I

.field public final synthetic d:Lcom/papa91/arc/bean/Response;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;ILcom/papa91/arc/bean/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/r;->b:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    iput p2, p0, Lcom/papa91/arc/dialog/r;->c:I

    iput-object p3, p0, Lcom/papa91/arc/dialog/r;->d:Lcom/papa91/arc/bean/Response;

    iput p4, p0, Lcom/papa91/arc/dialog/r;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/r;->b:Lcom/papa91/arc/dialog/SettingAchievementDialog;

    iget v1, p0, Lcom/papa91/arc/dialog/r;->c:I

    iget-object v2, p0, Lcom/papa91/arc/dialog/r;->d:Lcom/papa91/arc/bean/Response;

    iget v3, p0, Lcom/papa91/arc/dialog/r;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->b(Lcom/papa91/arc/dialog/SettingAchievementDialog;ILcom/papa91/arc/bean/Response;I)V

    return-void
.end method
