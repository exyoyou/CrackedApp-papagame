.class public final synthetic Lcom/haima/hmcp/rtmp/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

.field public final synthetic b:Lcom/haima/hmcp/beans/SdkStreamPayloadData;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/a;->a:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/a;->b:Lcom/haima/hmcp/beans/SdkStreamPayloadData;

    return-void
.end method


# virtual methods
.method public final convertFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/a;->a:Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/a;->b:Lcom/haima/hmcp/beans/SdkStreamPayloadData;

    invoke-static {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->a(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    return-void
.end method
