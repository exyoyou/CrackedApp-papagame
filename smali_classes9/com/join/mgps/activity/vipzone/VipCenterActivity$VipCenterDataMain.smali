.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipCenterDataMain"
.end annotation


# static fields
.field public static final COLOCTION:I = 0x5

.field public static final EMPTY:I = 0x6

.field public static final HLIST:I = 0x4

.field public static final LUCKGIFT:I = 0x2

.field public static final TITLE:I = 0x3

.field public static final VIPCARD:I = 0x1


# instance fields
.field object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

.field type:I


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "type",
            "object"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->type:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->object:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->object:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->object:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->type:I

    .line 2
    .line 3
    return-void
.end method
