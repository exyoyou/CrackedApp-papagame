.class public final synthetic Lcom/haima/hmcp/rtmp/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/b;->a:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/haima/hmcp/rtmp/widgets/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/haima/hmcp/rtmp/widgets/b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/haima/hmcp/rtmp/widgets/b;->f:Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;

    return-void
.end method


# virtual methods
.method public final dnsAsyncCallback(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/b;->a:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/haima/hmcp/rtmp/widgets/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/b;->f:Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->a(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method
