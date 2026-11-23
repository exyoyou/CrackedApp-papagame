.class public final synthetic Lcom/join/mgps/Util/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/Util/UtilsMy$e0;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/papa91/view/RealNameLoginDialog;

.field public final synthetic e:Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/Util/UtilsMy$e0;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/h3;->a:Lcom/join/mgps/Util/UtilsMy$e0;

    iput p2, p0, Lcom/join/mgps/Util/h3;->b:I

    iput-object p3, p0, Lcom/join/mgps/Util/h3;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/join/mgps/Util/h3;->d:Lcom/papa91/view/RealNameLoginDialog;

    iput-object p5, p0, Lcom/join/mgps/Util/h3;->e:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/h3;->a:Lcom/join/mgps/Util/UtilsMy$e0;

    iget v1, p0, Lcom/join/mgps/Util/h3;->b:I

    iget-object v2, p0, Lcom/join/mgps/Util/h3;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/Util/h3;->d:Lcom/papa91/view/RealNameLoginDialog;

    iget-object v4, p0, Lcom/join/mgps/Util/h3;->e:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/join/mgps/Util/UtilsMy$e0;->a(Lcom/join/mgps/Util/UtilsMy$e0;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;Lcom/join/mgps/activity/arena/GameRoomActivity$x;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method
