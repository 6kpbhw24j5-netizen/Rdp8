#!/bin/bash

POINTS=$1
MIN_POINTS=900

echo "🔢 Total Points: $POINTS"
echo "🔐 Minimum Required: $MIN_POINTS"

if (( $(echo "$POINTS < $MIN_POINTS" | bc -l) )); then
  echo "❌ Insufficient points to proceed"
  exit 1
fi

if (( $(echo "$POINTS >= 4200" | bc -l) )); then
  AMOUNT="₹50"
elif (( $(echo "$POINTS >= 3350" | bc -l) )); then
  AMOUNT="₹40"
elif (( $(echo "$POINTS >= 2550" | bc -l) )); then
  AMOUNT="₹30"
else
  AMOUNT="₹10"
fi

# Generate DEMO 16-digit redeem code
REDEEM_CODE=$(tr -dc 'A-Z0-9' < /dev/urandom | head -c 16)

echo "✅ Sufficient points to proceed"
echo "🛒 Checkout repository complete"
echo "🎉 Order successful"
echo "💰 Redeem Value: $AMOUNT"
echo "🎟️ Google Play Redeem Code (DEMO)"
echo "$REDEEM_CODE"
