.class public final synthetic Lcom/haima/hmcp/rtmp/widgets/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/c;->b:Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/c;->b:Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;

    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->b(Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V

    return-void
.end method
