.class Lcom/haima/hmcp/HmcpManager$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/HmcpManager;->getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/HmcpManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager$14;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/HmcpManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->fail(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->success(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
