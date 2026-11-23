.class public Lcom/kongzue/dialogx/style/a$d;
.super Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/style/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/style/a;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/style/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/style/a$d;->a:Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Z)I
    .locals 0

    .line 1
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_enter:I

    .line 2
    .line 3
    return p1
.end method

.method public g(Z)I
    .locals 0

    .line 1
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_notification_exit:I

    .line 2
    .line 3
    return p1
.end method

.method public h(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popnotification_material_dark:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
