.class public final synthetic Lcom/join/mgps/Util/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/Util/UtilsMy$e0;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

.field public final synthetic e:I

.field public final synthetic f:Lcom/wufan/user/service/protobuf/UserInfo;

.field public final synthetic g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

.field public final synthetic h:Lcom/papa91/common/RealNameCheckInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/Util/UtilsMy$e0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/common/RealNameCheckInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/g3;->a:Lcom/join/mgps/Util/UtilsMy$e0;

    iput-object p2, p0, Lcom/join/mgps/Util/g3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/g3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/Util/g3;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iput p5, p0, Lcom/join/mgps/Util/g3;->e:I

    iput-object p6, p0, Lcom/join/mgps/Util/g3;->f:Lcom/wufan/user/service/protobuf/UserInfo;

    iput-object p7, p0, Lcom/join/mgps/Util/g3;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    iput-object p8, p0, Lcom/join/mgps/Util/g3;->h:Lcom/papa91/common/RealNameCheckInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/g3;->a:Lcom/join/mgps/Util/UtilsMy$e0;

    iget-object v1, p0, Lcom/join/mgps/Util/g3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/Util/g3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/Util/g3;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iget v4, p0, Lcom/join/mgps/Util/g3;->e:I

    iget-object v5, p0, Lcom/join/mgps/Util/g3;->f:Lcom/wufan/user/service/protobuf/UserInfo;

    iget-object v6, p0, Lcom/join/mgps/Util/g3;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    iget-object v7, p0, Lcom/join/mgps/Util/g3;->h:Lcom/papa91/common/RealNameCheckInfo;

    move-object v8, p1

    move v9, p2

    move-object v10, p3

    invoke-static/range {v0 .. v10}, Lcom/join/mgps/Util/UtilsMy$e0;->b(Lcom/join/mgps/Util/UtilsMy$e0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/common/RealNameCheckInfo;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method
