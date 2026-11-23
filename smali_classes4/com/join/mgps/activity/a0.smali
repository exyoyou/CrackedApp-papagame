.class public final synthetic Lcom/join/mgps/activity/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/CloudGameZoneActivity;

.field public final synthetic c:Lcom/wufan/user/service/protobuf/NewMemberInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/wufan/user/service/protobuf/NewMemberInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/a0;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/a0;->c:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a0;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->c:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/CloudGameZoneActivity;->o(Lcom/join/mgps/activity/CloudGameZoneActivity;Lcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V

    return-void
.end method
