.class final enum Lcom/cloudplay/messagesdk/gson/ToNumberPolicy$1;
.super Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILcom/cloudplay/messagesdk/gson/ToNumberPolicy$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public readNumber(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readNumber(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy$1;->readNumber(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
