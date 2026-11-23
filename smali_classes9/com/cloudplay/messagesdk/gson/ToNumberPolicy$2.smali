.class final enum Lcom/cloudplay/messagesdk/gson/ToNumberPolicy$2;
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
.method public readNumber(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/LazilyParsedNumber;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->p()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
