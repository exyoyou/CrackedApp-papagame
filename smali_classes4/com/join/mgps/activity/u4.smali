.class public final synthetic Lcom/join/mgps/activity/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lcom/join/mgps/activity/HMCloudMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/u4;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/join/mgps/activity/u4;->c:Lcom/join/mgps/activity/HMCloudMenuActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/u4;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/join/mgps/activity/u4;->c:Lcom/join/mgps/activity/HMCloudMenuActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->y(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/mgps/activity/HMCloudMenuActivity;)V

    return-void
.end method
